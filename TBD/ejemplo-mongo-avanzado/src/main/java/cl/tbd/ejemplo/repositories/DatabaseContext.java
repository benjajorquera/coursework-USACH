package cl.tbd.ejemplo.repositories;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.PojoCodecProvider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mongodb.MongoClientSettings;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoDatabase;

@Configuration
public class DatabaseContext {
    /*@Bean
    MongoClient mongoClient(){
        return MongoClients.create();
    }*/

    @Value("${mongodb.dbName}")
    private String dbName;

    @Bean
    MongoDatabase database(){
        //Configuracion de codec para parsear POJO
        CodecRegistry defaultCodecRegistry = MongoClientSettings.getDefaultCodecRegistry();
        CodecRegistry fromProvider = CodecRegistries.fromProviders(PojoCodecProvider.builder().automatic(true).build());
        CodecRegistry pojoCodecRegistry = CodecRegistries.fromRegistries(defaultCodecRegistry, fromProvider);
        

        MongoClient mongoClient =  MongoClients.create();
        MongoDatabase database = mongoClient.getDatabase(dbName).withCodecRegistry(pojoCodecRegistry);
        System.out.println("dbName:"+dbName);
        return database;
    }
}