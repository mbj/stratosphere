module Stratosphere.Deadline.Fleet (
        module Exports, Fleet(..), mkFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.HostConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Fleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html>
    Fleet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-configuration>
           configuration :: FleetConfigurationProperty,
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-displayname>
           displayName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-farmid>
           farmId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-hostconfiguration>
           hostConfiguration :: (Prelude.Maybe HostConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-maxworkercount>
           maxWorkerCount :: (Value Prelude.Integer),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-minworkercount>
           minWorkerCount :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-rolearn>
           roleArn :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-fleet.html#cfn-deadline-fleet-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleet ::
  FleetConfigurationProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer -> Value Prelude.Text -> Fleet
mkFleet configuration displayName farmId maxWorkerCount roleArn
  = Fleet
      {haddock_workaround_ = (), configuration = configuration,
       displayName = displayName, farmId = farmId,
       maxWorkerCount = maxWorkerCount, roleArn = roleArn,
       description = Prelude.Nothing, hostConfiguration = Prelude.Nothing,
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
                               (JSON..=) "HostConfiguration" Prelude.<$> hostConfiguration,
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
                  (JSON..=) "HostConfiguration" Prelude.<$> hostConfiguration,
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
instance Property "HostConfiguration" Fleet where
  type PropertyType "HostConfiguration" Fleet = HostConfigurationProperty
  set newValue Fleet {..}
    = Fleet {hostConfiguration = Prelude.pure newValue, ..}
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