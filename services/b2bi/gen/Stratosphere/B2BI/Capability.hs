module Stratosphere.B2BI.Capability (
        module Exports, Capability(..), mkCapability
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Capability.CapabilityConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Capability.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Capability
  = Capability {configuration :: CapabilityConfigurationProperty,
                instructionsDocuments :: (Prelude.Maybe [S3LocationProperty]),
                name :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag]),
                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapability ::
  CapabilityConfigurationProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Capability
mkCapability configuration name type'
  = Capability
      {configuration = configuration, name = name, type' = type',
       instructionsDocuments = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Capability where
  toResourceProperties Capability {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Configuration" JSON..= configuration, "Name" JSON..= name,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "InstructionsDocuments"
                                 Prelude.<$> instructionsDocuments,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Capability where
  toJSON Capability {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Configuration" JSON..= configuration, "Name" JSON..= name,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "InstructionsDocuments"
                    Prelude.<$> instructionsDocuments,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Configuration" Capability where
  type PropertyType "Configuration" Capability = CapabilityConfigurationProperty
  set newValue Capability {..}
    = Capability {configuration = newValue, ..}
instance Property "InstructionsDocuments" Capability where
  type PropertyType "InstructionsDocuments" Capability = [S3LocationProperty]
  set newValue Capability {..}
    = Capability {instructionsDocuments = Prelude.pure newValue, ..}
instance Property "Name" Capability where
  type PropertyType "Name" Capability = Value Prelude.Text
  set newValue Capability {..} = Capability {name = newValue, ..}
instance Property "Tags" Capability where
  type PropertyType "Tags" Capability = [Tag]
  set newValue Capability {..}
    = Capability {tags = Prelude.pure newValue, ..}
instance Property "Type" Capability where
  type PropertyType "Type" Capability = Value Prelude.Text
  set newValue Capability {..} = Capability {type' = newValue, ..}