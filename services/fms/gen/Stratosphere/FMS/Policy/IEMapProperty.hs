module Stratosphere.FMS.Policy.IEMapProperty (
        IEMapProperty(..), mkIEMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IEMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html>
    IEMapProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-account>
                   aCCOUNT :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-orgunit>
                   oRGUNIT :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIEMapProperty :: IEMapProperty
mkIEMapProperty
  = IEMapProperty
      {haddock_workaround_ = (), aCCOUNT = Prelude.Nothing,
       oRGUNIT = Prelude.Nothing}
instance ToResourceProperties IEMapProperty where
  toResourceProperties IEMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.IEMap", supportsTags = Prelude.False,
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