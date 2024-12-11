module Stratosphere.Deadline.Fleet (
        module Exports, Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = Fleet {configuration :: FleetConfigurationProperty,
           description :: (Prelude.Maybe (Value Prelude.Text)),
           displayName :: (Value Prelude.Text),
           farmId :: (Value Prelude.Text),
           maxWorkerCount :: (Value Prelude.Integer),
           minWorkerCount :: (Prelude.Maybe (Value Prelude.Integer)),
           roleArn :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet ::
  FleetConfigurationProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer -> Value Prelude.Text -> Fleet
mkFleet configuration displayName farmId maxWorkerCount roleArn
  = Fleet
      {configuration = configuration, displayName = displayName,
       farmId = farmId, maxWorkerCount = maxWorkerCount,
       roleArn = roleArn, description = Prelude.Nothing,
       minWorkerCount = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Fleet where
  toResourceProperties Fleet {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Configuration" JSON..= configuration,
                            "DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
                            "MaxWorkerCount" JSON..= maxWorkerCount, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "MinWorkerCount" Prelude.<$> minWorkerCount,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Fleet where
  toJSON Fleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Configuration" JSON..= configuration,
               "DisplayName" JSON..= displayName, "FarmId" JSON..= farmId,
               "MaxWorkerCount" JSON..= maxWorkerCount, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "MinWorkerCount" Prelude.<$> minWorkerCount,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Configuration" Fleet where
  type PropertyType "Configuration" Fleet = FleetConfigurationProperty
  set newValue Fleet {..} = Fleet {configuration = newValue, ..}
instance Property "Description" Fleet where
  type PropertyType "Description" Fleet = Value Prelude.Text
  set newValue Fleet {..}
    = Fleet {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Fleet where
  type PropertyType "DisplayName" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {displayName = newValue, ..}
instance Property "FarmId" Fleet where
  type PropertyType "FarmId" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {farmId = newValue, ..}
instance Property "MaxWorkerCount" Fleet where
  type PropertyType "MaxWorkerCount" Fleet = Value Prelude.Integer
  set newValue Fleet {..} = Fleet {maxWorkerCount = newValue, ..}
instance Property "MinWorkerCount" Fleet where
  type PropertyType "MinWorkerCount" Fleet = Value Prelude.Integer
  set newValue Fleet {..}
    = Fleet {minWorkerCount = Prelude.pure newValue, ..}
instance Property "RoleArn" Fleet where
  type PropertyType "RoleArn" Fleet = Value Prelude.Text
  set newValue Fleet {..} = Fleet {roleArn = newValue, ..}
instance Property "Tags" Fleet where
  type PropertyType "Tags" Fleet = [Tag]
  set newValue Fleet {..} = Fleet {tags = Prelude.pure newValue, ..}