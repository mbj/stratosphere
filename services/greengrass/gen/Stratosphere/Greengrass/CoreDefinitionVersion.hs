module Stratosphere.Greengrass.CoreDefinitionVersion (
        module Exports, CoreDefinitionVersion(..), mkCoreDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.CoreDefinitionVersion.CoreProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreDefinitionVersion
  = CoreDefinitionVersion {coreDefinitionId :: (Value Prelude.Text),
                           cores :: [CoreProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreDefinitionVersion ::
  Value Prelude.Text -> [CoreProperty] -> CoreDefinitionVersion
mkCoreDefinitionVersion coreDefinitionId cores
  = CoreDefinitionVersion
      {coreDefinitionId = coreDefinitionId, cores = cores}
instance ToResourceProperties CoreDefinitionVersion where
  toResourceProperties CoreDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::CoreDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["CoreDefinitionId" JSON..= coreDefinitionId,
                       "Cores" JSON..= cores]}
instance JSON.ToJSON CoreDefinitionVersion where
  toJSON CoreDefinitionVersion {..}
    = JSON.object
        ["CoreDefinitionId" JSON..= coreDefinitionId,
         "Cores" JSON..= cores]
instance Property "CoreDefinitionId" CoreDefinitionVersion where
  type PropertyType "CoreDefinitionId" CoreDefinitionVersion = Value Prelude.Text
  set newValue CoreDefinitionVersion {..}
    = CoreDefinitionVersion {coreDefinitionId = newValue, ..}
instance Property "Cores" CoreDefinitionVersion where
  type PropertyType "Cores" CoreDefinitionVersion = [CoreProperty]
  set newValue CoreDefinitionVersion {..}
    = CoreDefinitionVersion {cores = newValue, ..}