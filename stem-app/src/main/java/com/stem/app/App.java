package com.stem.app;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.fxml.FXMLLoader;

import java.io.IOException;
import java.util.Objects;

/**
 * JavaFX App
 */
public class App extends Application {

    /**
     * This executes only on the application start
     */
    @Override
    public void start(Stage stage) throws IOException {    
        
        Parent root = FXMLLoader.load(Objects.requireNonNull(getClass().getResource("start_scene.fxml")));
        
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }

}