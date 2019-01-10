<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="TickTockPlan.ple"><GlobalDeclarations LineNo="3" ColNo="0"><CommandDeclaration LineNo="3" ColNo="0"><Name>Init</Name></CommandDeclaration><CommandDeclaration LineNo="4" ColNo="0"><Name>Tick</Name></CommandDeclaration><CommandDeclaration LineNo="5" ColNo="0"><Name>Tock</Name></CommandDeclaration><CommandDeclaration LineNo="6" ColNo="0"><Name>pprint</Name><AnyParameters/></CommandDeclaration><StateDeclaration LineNo="7" ColNo="8"><Name>TickCounter</Name><Return><Name>_return_0</Name><Type>Integer</Type></Return></StateDeclaration><StateDeclaration LineNo="8" ColNo="8"><Name>TockCounter</Name><Return><Name>_return_0</Name><Type>Integer</Type></Return></StateDeclaration></GlobalDeclarations><Node NodeType="NodeList" epx="Sequence" LineNo="13" ColNo="2"><NodeId>Run</NodeId><EndCondition><AND><GE><LookupOnChange><Name><StringValue>TickCounter</StringValue></Name></LookupOnChange><IntegerValue>25</IntegerValue></GE><GE><LookupOnChange><Name><StringValue>TockCounter</StringValue></Name></LookupOnChange><IntegerValue>25</IntegerValue></GE></AND></EndCondition><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__0</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__0</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__1</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Execute</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Execute</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Print</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Print</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="14" ColNo="2"><NodeId>COMMAND__0</NodeId><NodeBody><Command><Name><StringValue>pprint</StringValue></Name><Arguments LineNo="15" ColNo="10"><StringValue>Initializing statemachine</StringValue></Arguments></Command></NodeBody></Node><Node NodeType="Command" LineNo="15" ColNo="2"><NodeId>COMMAND__1</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__0</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Init</StringValue></Name></Command></NodeBody></Node><Node NodeType="NodeList" epx="Sequence" LineNo="20" ColNo="4"><NodeId>Execute</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><InvariantCondition><NOT><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">while__2</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">while__2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="While" LineNo="20" ColNo="4"><NodeId>while__2</NodeId><RepeatCondition><EQInternal><NodeOutcomeVariable><NodeRef dir="child">ep2cp_WhileTest</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>SUCCESS</NodeOutcomeValue></EQInternal></RepeatCondition><NodeBody><NodeList><Node NodeType="Empty" epx="Condition"><NodeId>ep2cp_WhileTest</NodeId><PostCondition><AND><LT><LookupNow><Name><StringValue>TickCounter</StringValue></Name></LookupNow><IntegerValue>25</IntegerValue></LT><LT><LookupNow><Name><StringValue>TockCounter</StringValue></Name></LookupNow><IntegerValue>25</IntegerValue></LT></AND></PostCondition></Node><Node NodeType="NodeList" epx="Action" LineNo="22" ColNo="6"><NodeId>BLOCK__3</NodeId><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__4</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__4</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">COMMAND__5</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">COMMAND__5</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><StartCondition><EQInternal><NodeOutcomeVariable><NodeRef dir="sibling">ep2cp_WhileTest</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>SUCCESS</NodeOutcomeValue></EQInternal></StartCondition><SkipCondition><AND><EQInternal><NodeStateVariable><NodeRef dir="sibling">ep2cp_WhileTest</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal><EQInternal><NodeFailureVariable><NodeRef dir="sibling">ep2cp_WhileTest</NodeRef></NodeFailureVariable><NodeFailureValue>POST_CONDITION_FAILED</NodeFailureValue></EQInternal></AND></SkipCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="21" ColNo="6"><NodeId>COMMAND__4</NodeId><NodeBody><Command><Name><StringValue>Tick</StringValue></Name></Command></NodeBody></Node><Node NodeType="Command" LineNo="22" ColNo="6"><NodeId>COMMAND__5</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">COMMAND__4</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>Tock</StringValue></Name></Command></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node><Node NodeType="Command" LineNo="28" ColNo="4"><NodeId>Print</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Execute</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Command><Name><StringValue>pprint</StringValue></Name><Arguments LineNo="29" ColNo="12"><StringValue>Job Finished...</StringValue></Arguments></Command></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>