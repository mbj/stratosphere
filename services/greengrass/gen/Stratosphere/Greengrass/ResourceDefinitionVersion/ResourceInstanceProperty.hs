module Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceInstanceProperty (
        module Exports, ResourceInstanceProperty(..),
        mkResourceInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceDataContainerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceInstanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html>
    ResourceInstanceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-id>
                              id :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-resourcedatacontainer>
                              resourceDataContainer :: ResourceDataContainerProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceInstanceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ResourceDataContainerProperty -> ResourceInstanceProperty
mkResourceInstanceProperty id name resourceDataContainer
  = ResourceInstanceProperty
      {haddock_workaround_ = (), id = id, name = name,
       resourceDataContainer = resourceDataContainer}
instance ToResourceProperties ResourceInstanceProperty where
  toResourceProperties ResourceInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.ResourceInstance",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "Name" JSON..= name,
                       "ResourceDataContainer" JSON..= resourceDataContainer]}
instance JSON.ToJSON ResourceInstanceProperty where
  toJSON ResourceInstanceProperty {..}
    = JSON.object
        ["Id" JSON..= id, "Name" JSON..= name,
         "ResourceDataContainer" JSON..= resourceDataContainer]
instance Property "Id" ResourceInstanceProperty where
  type PropertyType "Id" ResourceInstanceProperty = Value Prelude.Text
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {id = newValue, ..}
instance Property "Name" ResourceInstanceProperty where
  type PropertyType "Name" ResourceInstanceProperty = Value Prelude.Text
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {name = newValue, ..}
instance Property "ResourceDataContainer" ResourceInstanceProperty where
  type PropertyType "ResourceDataContainer" ResourceInstanceProperty = ResourceDataContainerProperty
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {resourceDataContainer = newValue, ..}