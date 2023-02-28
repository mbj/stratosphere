module Stratosphere.Kendra.Index (
        module Exports, Index(..), mkIndex
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.Index.CapacityUnitsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.Index.DocumentMetadataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.Index.ServerSideEncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.Index.UserTokenConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Index
  = Index {capacityUnits :: (Prelude.Maybe CapacityUnitsConfigurationProperty),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           documentMetadataConfigurations :: (Prelude.Maybe [DocumentMetadataConfigurationProperty]),
           edition :: (Value Prelude.Text),
           name :: (Value Prelude.Text),
           roleArn :: (Value Prelude.Text),
           serverSideEncryptionConfiguration :: (Prelude.Maybe ServerSideEncryptionConfigurationProperty),
           tags :: (Prelude.Maybe [Tag]),
           userContextPolicy :: (Prelude.Maybe (Value Prelude.Text)),
           userTokenConfigurations :: (Prelude.Maybe [UserTokenConfigurationProperty])}
mkIndex ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Index
mkIndex edition name roleArn
  = Index
      {edition = edition, name = name, roleArn = roleArn,
       capacityUnits = Prelude.Nothing, description = Prelude.Nothing,
       documentMetadataConfigurations = Prelude.Nothing,
       serverSideEncryptionConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing, userContextPolicy = Prelude.Nothing,
       userTokenConfigurations = Prelude.Nothing}
instance ToResourceProperties Index where
  toResourceProperties Index {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Edition" JSON..= edition, "Name" JSON..= name,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityUnits" Prelude.<$> capacityUnits,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DocumentMetadataConfigurations"
                                 Prelude.<$> documentMetadataConfigurations,
                               (JSON..=) "ServerSideEncryptionConfiguration"
                                 Prelude.<$> serverSideEncryptionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserContextPolicy" Prelude.<$> userContextPolicy,
                               (JSON..=) "UserTokenConfigurations"
                                 Prelude.<$> userTokenConfigurations]))}
instance JSON.ToJSON Index where
  toJSON Index {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Edition" JSON..= edition, "Name" JSON..= name,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityUnits" Prelude.<$> capacityUnits,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DocumentMetadataConfigurations"
                    Prelude.<$> documentMetadataConfigurations,
                  (JSON..=) "ServerSideEncryptionConfiguration"
                    Prelude.<$> serverSideEncryptionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserContextPolicy" Prelude.<$> userContextPolicy,
                  (JSON..=) "UserTokenConfigurations"
                    Prelude.<$> userTokenConfigurations])))
instance Property "CapacityUnits" Index where
  type PropertyType "CapacityUnits" Index = CapacityUnitsConfigurationProperty
  set newValue Index {..}
    = Index {capacityUnits = Prelude.pure newValue, ..}
instance Property "Description" Index where
  type PropertyType "Description" Index = Value Prelude.Text
  set newValue Index {..}
    = Index {description = Prelude.pure newValue, ..}
instance Property "DocumentMetadataConfigurations" Index where
  type PropertyType "DocumentMetadataConfigurations" Index = [DocumentMetadataConfigurationProperty]
  set newValue Index {..}
    = Index
        {documentMetadataConfigurations = Prelude.pure newValue, ..}
instance Property "Edition" Index where
  type PropertyType "Edition" Index = Value Prelude.Text
  set newValue Index {..} = Index {edition = newValue, ..}
instance Property "Name" Index where
  type PropertyType "Name" Index = Value Prelude.Text
  set newValue Index {..} = Index {name = newValue, ..}
instance Property "RoleArn" Index where
  type PropertyType "RoleArn" Index = Value Prelude.Text
  set newValue Index {..} = Index {roleArn = newValue, ..}
instance Property "ServerSideEncryptionConfiguration" Index where
  type PropertyType "ServerSideEncryptionConfiguration" Index = ServerSideEncryptionConfigurationProperty
  set newValue Index {..}
    = Index
        {serverSideEncryptionConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Index where
  type PropertyType "Tags" Index = [Tag]
  set newValue Index {..} = Index {tags = Prelude.pure newValue, ..}
instance Property "UserContextPolicy" Index where
  type PropertyType "UserContextPolicy" Index = Value Prelude.Text
  set newValue Index {..}
    = Index {userContextPolicy = Prelude.pure newValue, ..}
instance Property "UserTokenConfigurations" Index where
  type PropertyType "UserTokenConfigurations" Index = [UserTokenConfigurationProperty]
  set newValue Index {..}
    = Index {userTokenConfigurations = Prelude.pure newValue, ..}