module Stratosphere.VoiceID.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VoiceID.Domain.ServerSideEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = Domain {description :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Value Prelude.Text),
            serverSideEncryptionConfiguration :: ServerSideEncryptionConfigurationProperty,
            tags :: (Prelude.Maybe [Tag])}
mkDomain ::
  Value Prelude.Text
  -> ServerSideEncryptionConfigurationProperty -> Domain
mkDomain name serverSideEncryptionConfiguration
  = Domain
      {name = name,
       serverSideEncryptionConfiguration = serverSideEncryptionConfiguration,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::VoiceID::Domain", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "ServerSideEncryptionConfiguration"
                              JSON..= serverSideEncryptionConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "ServerSideEncryptionConfiguration"
                 JSON..= serverSideEncryptionConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Domain where
  type PropertyType "Description" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {description = Prelude.pure newValue, ..}
instance Property "Name" Domain where
  type PropertyType "Name" Domain = Value Prelude.Text
  set newValue Domain {..} = Domain {name = newValue, ..}
instance Property "ServerSideEncryptionConfiguration" Domain where
  type PropertyType "ServerSideEncryptionConfiguration" Domain = ServerSideEncryptionConfigurationProperty
  set newValue Domain {..}
    = Domain {serverSideEncryptionConfiguration = newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}