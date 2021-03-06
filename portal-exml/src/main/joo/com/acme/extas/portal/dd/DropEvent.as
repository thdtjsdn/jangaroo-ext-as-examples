package com.acme.extas.portal.dd {
import com.acme.extas.portal.PortalBase;

import ext.Container;
import ext.IEventObject;
import ext.Panel;
import ext.dd.DragSource;

import joo.JavaScriptObject;

/**
 * A DropEvent sent by the Portal through a DropZone.
 * @see com.acme.extas.portal.PortalBase
 * @see DropZone
 */
public class DropEvent extends JavaScriptObject {

  public function DropEvent(dropZone:DropZone, source:DragSource, rawEvent:IEventObject, data:Object, columnIndex:int, column:Container, position:Number) {
    this['portal'] = dropZone.portal;
    this['panel'] = data.panel;
    this['status'] = dropZone.dropAllowed;
    this['source'] = source;
    this['rawEvent'] = rawEvent;
    this['data'] = data;
    this['columnIndex'] = columnIndex;
    this['column'] = column;
    this['position'] = position;
  }

  public native function get portal():PortalBase;

  public native function get panel():Panel;

  public native function get status():String;

  public native function get source():DragSource;

  public native function get rawEvent():IEventObject;

  public native function get data():Object;

  public native function get columnIndex():int;

  public native function get column():Container;

  public native function get position():Number;

}
}
