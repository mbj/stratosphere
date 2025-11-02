module Stratosphere.EMR.Cluster.KeyValueProperty (
        KeyValueProperty(..), mkKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html>
    KeyValueProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html#cfn-elasticmapreduce-cluster-keyvalue-key>
                      key :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-keyvalue.html#cfn-elasticmapreduce-cluster-keyvalue-value>
                      value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyValueProperty :: KeyValueProperty
mkKeyValueProperty
  = KeyValueProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties KeyValueProperty where
  toResourceProperties KeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.KeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON KeyValueProperty where
  toJSON KeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" KeyValueProperty where
  type PropertyType "Key" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {key = Prelude.pure newValue, ..}
instance Property "Value" KeyValueProperty where
  type PropertyType "Value" KeyValueProperty = Value Prelude.Text
  set newValue KeyValueProperty {..}
    = KeyValueProperty {value = Prelude.pure newValue, ..}