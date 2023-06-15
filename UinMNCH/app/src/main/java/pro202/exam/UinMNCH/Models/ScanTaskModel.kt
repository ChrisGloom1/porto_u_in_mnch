package pro202.exam.UinMNCH.Models

// An universal task model that is based on picture scanning w/camera
class ScanTaskModel (
    private var id: Int, // From Munch's API
    private var taskNr: String, // For database update
    private var title: String, //The name of the task
    private var subTitle: String, // The description of the tour the task belongs to
    private var content1: String, // Detailed task description in the first chat bubble
    private var content2: String // Detailed task description in the second chat bubble
        ){

    // Getters and setters for the task constructor arguments

    fun getId(): Int{
        return id
    }
    fun setId(id: Int){
        this.id = id
    }
    fun getTaskNr(): String{
        return taskNr
    }
    fun setTaskNr(taskNr: String){
        this.taskNr = taskNr
    }
    fun getContent1(): String{
        return content1
    }
    fun setContent1(content: String){
        this.content1 = content
    }
    fun getContent2(): String{
        return content2
    }
    fun setContent2(content: String){
        this.content2 = content
    }
    fun getTitle(): String{
        return title
    }
    fun setTitle(title: String){
        this.title = title
    }
    fun getSubTitle(): String{
        return subTitle
    }
    fun setSubTitle(subTitle: String){
        this.subTitle = subTitle
    }

}