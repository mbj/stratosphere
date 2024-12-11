module Stratosphere.Glue.UsageProfile.ProfileConfigurationProperty (
        module Exports, ProfileConfigurationProperty(..),
        mkProfileConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.UsageProfile.ConfigurationObjectProperty as Exports
import Stratosphere.ResourceProperties
data ProfileConfigurationProperty
  = ProfileConfigurationProperty {jobConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text ConfigurationObjectProperty)),
                                  sessionConfiguration :: (Prelude.Maybe (Prelude.Map Prelude.Text ConfigurationObjectProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileConfigurationProperty :: ProfileConfigurationProperty
mkProfileConfigurationProperty
  = ProfileConfigurationProperty
      {jobConfiguration = Prelude.Nothing,
       sessionConfiguration = Prelude.Nothing}
instance ToResourceProperties ProfileConfigurationProperty where
  toResourceProperties ProfileConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::UsageProfile.ProfileConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JobConfiguration" Prelude.<$> jobConfiguration,
                            (JSON..=) "SessionConfiguration"
                              Prelude.<$> sessionConfiguration])}
instance JSON.ToJSON ProfileConfigurationProperty where
  toJSON ProfileConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JobConfiguration" Prelude.<$> jobConfiguration,
               (JSON..=) "SessionConfiguration"
                 Prelude.<$> sessionConfiguration]))
instance Property "JobConfiguration" ProfileConfigurationProperty where
  type PropertyType "JobConfiguration" ProfileConfigurationProperty = Prelude.Map Prelude.Text ConfigurationObjectProperty
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {jobConfiguration = Prelude.pure newValue, ..}
instance Property "SessionConfiguration" ProfileConfigurationProperty where
  type PropertyType "SessionConfiguration" ProfileConfigurationProperty = Prelude.Map Prelude.Text ConfigurationObjectProperty
  set newValue ProfileConfigurationProperty {..}
    = ProfileConfigurationProperty
        {sessionConfiguration = Prelude.pure newValue, ..}