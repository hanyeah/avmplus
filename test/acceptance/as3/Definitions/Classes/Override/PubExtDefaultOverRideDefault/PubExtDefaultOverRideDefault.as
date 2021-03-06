/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package DefaultClass {

    import DefaultClass.*;

    public class PubExtDefaultOverRideDefault extends DefaultClass {

        public var orSet = false;
        public var orGet = false;

        // *********************************
        // override a default method
        // with a default method in subclass
        // *********************************

        override function setBoolean( b:Boolean ) {
            orSet = true;
            boolean = b;
        }

        override function getBoolean() : Boolean {
            orGet = true;
            return boolean;
        }

        public function setGetBoolean(b:Boolean):Boolean{
            this.setBoolean(b);
            return this.getBoolean();
        }
    }

}
