module Stratosphere.IoTFleetWise.Fleet (
        Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-fleet.html>
    Fleet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-fleet.html#cfn-iotfleetwise-fleet-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-fleet.html#cfn-iotfleetwise-fleet-id>
           id :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-fleet.html#cfn-iotfleetwise-fleet-signalcatalogarn>
           signalCatalogArn :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotfleetwise-fleet.html#cfn-iotfleetwise-fleet-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet :: Value Prelude.Text -> Value Prelude.Text -> Fleet
mkFleet id signalCatalogArn
  = Fleet
      {haddock_workaround_ = (), id = id,
       signalCatalogArn = signalCatalogArn, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "SignalCatalogArn" JSON..= signalCatalogArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "SignalCatalogArn" JSON..= signalCatalogArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Fleet where
  type PropertyType "Description" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {description = Prelude.pure newValue, ..}
instance Property "Id" Fleet where
  type PropertyType "Id" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {id = newValue, ..}
instance Property "SignalCatalogArn" Fleet where
  type PropertyType "SignalCatalogArn" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {signalCatalogArn = newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}