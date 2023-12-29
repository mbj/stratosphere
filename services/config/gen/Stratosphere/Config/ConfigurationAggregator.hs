module Stratosphere.Config.ConfigurationAggregator (
        module Exports, ConfigurationAggregator(..),
        mkConfigurationAggregator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigurationAggregator.AccountAggregationSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigurationAggregator.OrganizationAggregationSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConfigurationAggregator
  = ConfigurationAggregator {accountAggregationSources :: (Prelude.Maybe [AccountAggregationSourceProperty]),
                             configurationAggregatorName :: (Prelude.Maybe (Value Prelude.Text)),
                             organizationAggregationSource :: (Prelude.Maybe OrganizationAggregationSourceProperty),
                             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationAggregator :: ConfigurationAggregator
mkConfigurationAggregator
  = ConfigurationAggregator
      {accountAggregationSources = Prelude.Nothing,
       configurationAggregatorName = Prelude.Nothing,
       organizationAggregationSource = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ConfigurationAggregator where
  toResourceProperties ConfigurationAggregator {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationAggregator",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountAggregationSources"
                              Prelude.<$> accountAggregationSources,
                            (JSON..=) "ConfigurationAggregatorName"
                              Prelude.<$> configurationAggregatorName,
                            (JSON..=) "OrganizationAggregationSource"
                              Prelude.<$> organizationAggregationSource,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ConfigurationAggregator where
  toJSON ConfigurationAggregator {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountAggregationSources"
                 Prelude.<$> accountAggregationSources,
               (JSON..=) "ConfigurationAggregatorName"
                 Prelude.<$> configurationAggregatorName,
               (JSON..=) "OrganizationAggregationSource"
                 Prelude.<$> organizationAggregationSource,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AccountAggregationSources" ConfigurationAggregator where
  type PropertyType "AccountAggregationSources" ConfigurationAggregator = [AccountAggregationSourceProperty]
  set newValue ConfigurationAggregator {..}
    = ConfigurationAggregator
        {accountAggregationSources = Prelude.pure newValue, ..}
instance Property "ConfigurationAggregatorName" ConfigurationAggregator where
  type PropertyType "ConfigurationAggregatorName" ConfigurationAggregator = Value Prelude.Text
  set newValue ConfigurationAggregator {..}
    = ConfigurationAggregator
        {configurationAggregatorName = Prelude.pure newValue, ..}
instance Property "OrganizationAggregationSource" ConfigurationAggregator where
  type PropertyType "OrganizationAggregationSource" ConfigurationAggregator = OrganizationAggregationSourceProperty
  set newValue ConfigurationAggregator {..}
    = ConfigurationAggregator
        {organizationAggregationSource = Prelude.pure newValue, ..}
instance Property "Tags" ConfigurationAggregator where
  type PropertyType "Tags" ConfigurationAggregator = [Tag]
  set newValue ConfigurationAggregator {..}
    = ConfigurationAggregator {tags = Prelude.pure newValue, ..}