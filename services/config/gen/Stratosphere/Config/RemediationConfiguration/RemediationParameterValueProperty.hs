module Stratosphere.Config.RemediationConfiguration.RemediationParameterValueProperty (
        module Exports, RemediationParameterValueProperty(..),
        mkRemediationParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.RemediationConfiguration.ResourceValueProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.RemediationConfiguration.StaticValueProperty as Exports
import Stratosphere.ResourceProperties
data RemediationParameterValueProperty
  = RemediationParameterValueProperty {resourceValue :: (Prelude.Maybe ResourceValueProperty),
                                       staticValue :: (Prelude.Maybe StaticValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRemediationParameterValueProperty ::
  RemediationParameterValueProperty
mkRemediationParameterValueProperty
  = RemediationParameterValueProperty
      {resourceValue = Prelude.Nothing, staticValue = Prelude.Nothing}
instance ToResourceProperties RemediationParameterValueProperty where
  toResourceProperties RemediationParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration.RemediationParameterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceValue" Prelude.<$> resourceValue,
                            (JSON..=) "StaticValue" Prelude.<$> staticValue])}
instance JSON.ToJSON RemediationParameterValueProperty where
  toJSON RemediationParameterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceValue" Prelude.<$> resourceValue,
               (JSON..=) "StaticValue" Prelude.<$> staticValue]))
instance Property "ResourceValue" RemediationParameterValueProperty where
  type PropertyType "ResourceValue" RemediationParameterValueProperty = ResourceValueProperty
  set newValue RemediationParameterValueProperty {..}
    = RemediationParameterValueProperty
        {resourceValue = Prelude.pure newValue, ..}
instance Property "StaticValue" RemediationParameterValueProperty where
  type PropertyType "StaticValue" RemediationParameterValueProperty = StaticValueProperty
  set newValue RemediationParameterValueProperty {..}
    = RemediationParameterValueProperty
        {staticValue = Prelude.pure newValue, ..}