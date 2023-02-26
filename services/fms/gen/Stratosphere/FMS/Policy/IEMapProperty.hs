module Stratosphere.FMS.Policy.IEMapProperty (
        IEMapProperty(..), mkIEMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IEMapProperty
  = IEMapProperty {aCCOUNT :: (Prelude.Maybe (ValueList Prelude.Text)),
                   oRGUNIT :: (Prelude.Maybe (ValueList Prelude.Text))}
mkIEMapProperty :: IEMapProperty
mkIEMapProperty
  = IEMapProperty
      {aCCOUNT = Prelude.Nothing, oRGUNIT = Prelude.Nothing}
instance ToResourceProperties IEMapProperty where
  toResourceProperties IEMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.IEMap",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ACCOUNT" Prelude.<$> aCCOUNT,
                            (JSON..=) "ORGUNIT" Prelude.<$> oRGUNIT])}
instance JSON.ToJSON IEMapProperty where
  toJSON IEMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ACCOUNT" Prelude.<$> aCCOUNT,
               (JSON..=) "ORGUNIT" Prelude.<$> oRGUNIT]))
instance Property "ACCOUNT" IEMapProperty where
  type PropertyType "ACCOUNT" IEMapProperty = ValueList Prelude.Text
  set newValue IEMapProperty {..}
    = IEMapProperty {aCCOUNT = Prelude.pure newValue, ..}
instance Property "ORGUNIT" IEMapProperty where
  type PropertyType "ORGUNIT" IEMapProperty = ValueList Prelude.Text
  set newValue IEMapProperty {..}
    = IEMapProperty {oRGUNIT = Prelude.pure newValue, ..}