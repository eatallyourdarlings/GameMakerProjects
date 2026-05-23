other.constellated = true;
//print($"stanza: {other.asterite_index}")


obj_poem.poem[other.asterite_index, 1] = true;
obj_poem.stanza_index = other.asterite_index;


// too complicated, trying to make it only fire off once
//if !(obj_poem.poem[other.asterite_index, 1] == true)
//	obj_poem.stanza_index = other.asterite_index;
//else {
//	obj_poem.poem[other.asterite_index, 1] = true;	
//}