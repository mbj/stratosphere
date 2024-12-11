module Stratosphere.Oam.Link.LinkConfigurationProperty (
        module Exports, LinkConfigurationProperty(..),
        mkLinkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Oam.Link.LinkFilterProperty as Exports
import Stratosphere.ResourceProperties
data LinkConfigurationProperty
  = LinkConfigurationProperty {logGroupConfiguration :: (Prelude.Maybe LinkFilterProperty),
                               metricConfiguration :: (Prelude.Maybe LinkFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkConfigurationProperty :: LinkConfigurationProperty
mkLinkConfigurationProperty
  = LinkConfigurationProperty
      {logGroupConfiguration = Prelude.Nothing,
       metricConfiguration = Prelude.Nothing}
instance ToResourceProperties LinkConfigurationProperty where
  toResourceProperties LinkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Oam::Link.LinkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupConfiguration"
                              Prelude.<$> logGroupConfiguration,
                            (JSON..=) "MetricConfiguration" Prelude.<$> metricConfiguration])}
instance JSON.ToJSON LinkConfigurationProperty where
  toJSON LinkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupConfiguration"
                 Prelude.<$> logGroupConfiguration,
               (JSON..=) "MetricConfiguration" Prelude.<$> metricConfiguration]))
instance Property "LogGroupConfiguration" LinkConfigurationProperty where
  type PropertyType "LogGroupConfiguration" LinkConfigurationProperty = LinkFilterProperty
  set newValue LinkConfigurationProperty {..}
    = LinkConfigurationProperty
        {logGroupConfiguration = Prelude.pure newValue, ..}
instance Property "MetricConfiguration" LinkConfigurationProperty where
  type PropertyType "MetricConfiguration" LinkConfigurationProperty = LinkFilterProperty
  set newValue LinkConfigurationProperty {..}
    = LinkConfigurationProperty
        {metricConfiguration = Prelude.pure newValue, ..}