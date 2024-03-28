module Stratosphere.Cloud9.EnvironmentEC2 (
        module Exports, EnvironmentEC2(..), mkEnvironmentEC2
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cloud9.EnvironmentEC2.RepositoryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EnvironmentEC2
  = EnvironmentEC2 {automaticStopTimeMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                    connectionType :: (Prelude.Maybe (Value Prelude.Text)),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    imageId :: (Value Prelude.Text),
                    instanceType :: (Value Prelude.Text),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    ownerArn :: (Prelude.Maybe (Value Prelude.Text)),
                    repositories :: (Prelude.Maybe [RepositoryProperty]),
                    subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentEC2 ::
  Value Prelude.Text -> Value Prelude.Text -> EnvironmentEC2
mkEnvironmentEC2 imageId instanceType
  = EnvironmentEC2
      {imageId = imageId, instanceType = instanceType,
       automaticStopTimeMinutes = Prelude.Nothing,
       connectionType = Prelude.Nothing, description = Prelude.Nothing,
       name = Prelude.Nothing, ownerArn = Prelude.Nothing,
       repositories = Prelude.Nothing, subnetId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EnvironmentEC2 where
  toResourceProperties EnvironmentEC2 {..}
    = ResourceProperties
        {awsType = "AWS::Cloud9::EnvironmentEC2",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticStopTimeMinutes"
                                 Prelude.<$> automaticStopTimeMinutes,
                               (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OwnerArn" Prelude.<$> ownerArn,
                               (JSON..=) "Repositories" Prelude.<$> repositories,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EnvironmentEC2 where
  toJSON EnvironmentEC2 {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticStopTimeMinutes"
                    Prelude.<$> automaticStopTimeMinutes,
                  (JSON..=) "ConnectionType" Prelude.<$> connectionType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OwnerArn" Prelude.<$> ownerArn,
                  (JSON..=) "Repositories" Prelude.<$> repositories,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutomaticStopTimeMinutes" EnvironmentEC2 where
  type PropertyType "AutomaticStopTimeMinutes" EnvironmentEC2 = Value Prelude.Integer
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2
        {automaticStopTimeMinutes = Prelude.pure newValue, ..}
instance Property "ConnectionType" EnvironmentEC2 where
  type PropertyType "ConnectionType" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {connectionType = Prelude.pure newValue, ..}
instance Property "Description" EnvironmentEC2 where
  type PropertyType "Description" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {description = Prelude.pure newValue, ..}
instance Property "ImageId" EnvironmentEC2 where
  type PropertyType "ImageId" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {imageId = newValue, ..}
instance Property "InstanceType" EnvironmentEC2 where
  type PropertyType "InstanceType" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {instanceType = newValue, ..}
instance Property "Name" EnvironmentEC2 where
  type PropertyType "Name" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {name = Prelude.pure newValue, ..}
instance Property "OwnerArn" EnvironmentEC2 where
  type PropertyType "OwnerArn" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {ownerArn = Prelude.pure newValue, ..}
instance Property "Repositories" EnvironmentEC2 where
  type PropertyType "Repositories" EnvironmentEC2 = [RepositoryProperty]
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {repositories = Prelude.pure newValue, ..}
instance Property "SubnetId" EnvironmentEC2 where
  type PropertyType "SubnetId" EnvironmentEC2 = Value Prelude.Text
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" EnvironmentEC2 where
  type PropertyType "Tags" EnvironmentEC2 = [Tag]
  set newValue EnvironmentEC2 {..}
    = EnvironmentEC2 {tags = Prelude.pure newValue, ..}