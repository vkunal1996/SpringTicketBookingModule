/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vkunal1996
 */
public class TrainDetails implements java.io.Serializable
{
    private int id;
    private String source,destination,trainId,trainName,arrTime,deptTime,price,ticketType;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getTrainId() {
        return trainId;
    }

    public void setTrainId(String trainId) {
        this.trainId = trainId;
    }

    public String getTrainName() {
        return trainName;
    }

    public void setTrainName(String trainName) {
        this.trainName = trainName;
    }

    public String getArrTime() {
        return arrTime;
    }

    public void setArrTime(String arrTime) {
        this.arrTime = arrTime;
    }

    public String getDeptTime() {
        return deptTime;
    }

    public void setDeptTime(String deptTime) {
        this.deptTime = deptTime;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTicketType() {
        return ticketType;
    }

    public void setTicketType(String ticketType) {
        this.ticketType = ticketType;
    }
    
    public TrainDetails(){}
    public TrainDetails(int id,String source,String destination,String trainId,String trainName, String arrTime, String deptTime, String ticketType,String price){
        this.id=id;
        this.source=source;
        this.destination=destination;
        this.trainId=trainId;
        this.trainName=trainName;
        this.price=price;
        this.ticketType=ticketType;
        this.arrTime=arrTime;
        this.deptTime=deptTime;
        
    }
}
