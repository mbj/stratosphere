module Stratosphere.ElastiCache.ServerlessCache.DataStorageProperty (
        DataStorageProperty(..), mkDataStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataStorageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-datastorage.html>
    DataStorageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-datastorage.html#cfn-elasticache-serverlesscache-datastorage-maximum>
                         maximum :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-datastorage.html#cfn-elasticache-serverlesscache-datastorage-minimum>
                         minimum :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-datastorage.html#cfn-elasticache-serverlesscache-datastorage-unit>
                         unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataStorageProperty :: Value Prelude.Text -> DataStorageProperty
mkDataStorageProperty unit
  = DataStorageProperty
      {haddock_workaround_ = (), unit = unit, maximum = Prelude.Nothing,
       minimum = Prelude.Nothing}
instance ToResourceProperties DataStorageProperty where
  toResourceProperties DataStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.DataStorage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Unit" JSON..= unit]
                           (Prelude.catMaybes
                              [(JSON..=) "Maximum" Prelude.<$> maximum,
                               (JSON..=) "Minimum" Prelude.<$> minimum]))}
instance JSON.ToJSON DataStorageProperty where
  toJSON DataStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Unit" JSON..= unit]
              (Prelude.catMaybes
                 [(JSON..=) "Maximum" Prelude.<$> maximum,
                  (JSON..=) "Minimum" Prelude.<$> minimum])))
instance Property "Maximum" DataStorageProperty where
  type PropertyType "Maximum" DataStorageProperty = Value Prelude.Integer
  set newValue DataStorageProperty {..}
    = DataStorageProperty {maximum = Prelude.pure newValue, ..}
instance Property "Minimum" DataStorageProperty where
  type PropertyType "Minimum" DataStorageProperty = Value Prelude.Integer
  set newValue DataStorageProperty {..}
    = DataStorageProperty {minimum = Prelude.pure newValue, ..}
instance Property "Unit" DataStorageProperty where
  type PropertyType "Unit" DataStorageProperty = Value Prelude.Text
  set newValue DataStorageProperty {..}
    = DataStorageProperty {unit = newValue, ..}