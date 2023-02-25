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
  = Fleet {description :: (Prelude.Maybe (Value Prelude.Text)),
           id :: (Value Prelude.Text),
           signalCatalogArn :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
mkFleet :: Value Prelude.Text -> Value Prelude.Text -> Fleet
mkFleet id signalCatalogArn
  = Fleet
      {id = id, signalCatalogArn = signalCatalogArn,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Fleet",
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