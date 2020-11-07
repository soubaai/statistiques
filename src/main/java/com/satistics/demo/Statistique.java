package com.satistics.demo;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

@Entity

public class Statistique implements Serializable {

    @Id
    private Long id;
}
