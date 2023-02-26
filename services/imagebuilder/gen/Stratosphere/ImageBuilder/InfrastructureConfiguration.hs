module Stratosphere.ImageBuilder.InfrastructureConfiguration (
        module Exports, InfrastructureConfiguration(..),
        mkInfrastructureConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.InfrastructureConfiguration.InstanceMetadataOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.InfrastructureConfiguration.LoggingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InfrastructureConfiguration
  = InfrastructureConfiguration {description :: (Prelude.Maybe (Value Prelude.Text)),
                                 instanceMetadataOptions :: (Prelude.Maybe InstanceMetadataOptionsProperty),
                                 instanceProfileName :: (Value Prelude.Text),
                                 instanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 keyPair :: (Prelude.Maybe (Value Prelude.Text)),
                                 logging :: (Prelude.Maybe LoggingProperty),
                                 name :: (Value Prelude.Text),
                                 resourceTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 snsTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 terminateInstanceOnFailure :: (Prelude.Maybe (Value Prelude.Bool))}
mkInfrastructureConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text -> InfrastructureConfiguration
mkInfrastructureConfiguration instanceProfileName name
  = InfrastructureConfiguration
      {instanceProfileName = instanceProfileName, name = name,
       description = Prelude.Nothing,
       instanceMetadataOptions = Prelude.Nothing,
       instanceTypes = Prelude.Nothing, keyPair = Prelude.Nothing,
       logging = Prelude.Nothing, resourceTags = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, snsTopicArn = Prelude.Nothing,
       subnetId = Prelude.Nothing, tags = Prelude.Nothing,
       terminateInstanceOnFailure = Prelude.Nothing}
instance ToResourceProperties InfrastructureConfiguration where
  toResourceProperties InfrastructureConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceProfileName" JSON..= instanceProfileName,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InstanceMetadataOptions"
                                 Prelude.<$> instanceMetadataOptions,
                               (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                               (JSON..=) "KeyPair" Prelude.<$> keyPair,
                               (JSON..=) "Logging" Prelude.<$> logging,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TerminateInstanceOnFailure"
                                 Prelude.<$> terminateInstanceOnFailure]))}
instance JSON.ToJSON InfrastructureConfiguration where
  toJSON InfrastructureConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceProfileName" JSON..= instanceProfileName,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InstanceMetadataOptions"
                    Prelude.<$> instanceMetadataOptions,
                  (JSON..=) "InstanceTypes" Prelude.<$> instanceTypes,
                  (JSON..=) "KeyPair" Prelude.<$> keyPair,
                  (JSON..=) "Logging" Prelude.<$> logging,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TerminateInstanceOnFailure"
                    Prelude.<$> terminateInstanceOnFailure])))
instance Property "Description" InfrastructureConfiguration where
  type PropertyType "Description" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "InstanceMetadataOptions" InfrastructureConfiguration where
  type PropertyType "InstanceMetadataOptions" InfrastructureConfiguration = InstanceMetadataOptionsProperty
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {instanceMetadataOptions = Prelude.pure newValue, ..}
instance Property "InstanceProfileName" InfrastructureConfiguration where
  type PropertyType "InstanceProfileName" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration {instanceProfileName = newValue, ..}
instance Property "InstanceTypes" InfrastructureConfiguration where
  type PropertyType "InstanceTypes" InfrastructureConfiguration = ValueList Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {instanceTypes = Prelude.pure newValue, ..}
instance Property "KeyPair" InfrastructureConfiguration where
  type PropertyType "KeyPair" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration {keyPair = Prelude.pure newValue, ..}
instance Property "Logging" InfrastructureConfiguration where
  type PropertyType "Logging" InfrastructureConfiguration = LoggingProperty
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration {logging = Prelude.pure newValue, ..}
instance Property "Name" InfrastructureConfiguration where
  type PropertyType "Name" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration {name = newValue, ..}
instance Property "ResourceTags" InfrastructureConfiguration where
  type PropertyType "ResourceTags" InfrastructureConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {resourceTags = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" InfrastructureConfiguration where
  type PropertyType "SecurityGroupIds" InfrastructureConfiguration = ValueList Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SnsTopicArn" InfrastructureConfiguration where
  type PropertyType "SnsTopicArn" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {snsTopicArn = Prelude.pure newValue, ..}
instance Property "SubnetId" InfrastructureConfiguration where
  type PropertyType "SubnetId" InfrastructureConfiguration = Value Prelude.Text
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" InfrastructureConfiguration where
  type PropertyType "Tags" InfrastructureConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration {tags = Prelude.pure newValue, ..}
instance Property "TerminateInstanceOnFailure" InfrastructureConfiguration where
  type PropertyType "TerminateInstanceOnFailure" InfrastructureConfiguration = Value Prelude.Bool
  set newValue InfrastructureConfiguration {..}
    = InfrastructureConfiguration
        {terminateInstanceOnFailure = Prelude.pure newValue, ..}