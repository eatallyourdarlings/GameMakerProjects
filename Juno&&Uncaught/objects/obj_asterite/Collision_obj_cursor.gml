if !self.constellated 
{
	self.constellated = true
	obj_poem.poem[self.asterite_index, 1] = true;
	obj_poem.stanza_index = self.asterite_index;
}

// toggle
//self.constellated = 1 - self.constellated;
//print($"stanza: {other.asterite_index}")


// too complicated, trying to make it only fire off once
//if !(obj_poem.poem[other.asterite_index, 1] == true)
//	obj_poem.stanza_index = other.asterite_index;
//else {
//	obj_poem.poem[other.asterite_index, 1] = true;	
//}