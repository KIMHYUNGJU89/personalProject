package com.hyungju.api.detail;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown =true)
public class ExtraAssets{
    public CharaGraph charaGraph;
    public Faces faces;
    public CharaGraphEx charaGraphEx;
    public CharaGraphName charaGraphName;
    public NarrowFigure narrowFigure;
    public CharaFigure charaFigure;
    public CharaFigureForm charaFigureForm;
    public CharaFigureMulti charaFigureMulti;
    public Commands commands;
    public Status status;
    public EquipFace equipFace;
    public Image image;
    public SpriteModel spriteModel;
    public CharaGraphChange charaGraphChange;
    public NarrowFigureChange narrowFigureChange;
    public FacesChange facesChange;
}
