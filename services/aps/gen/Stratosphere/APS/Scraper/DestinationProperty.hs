module Stratosphere.APS.Scraper.DestinationProperty (
        module Exports, DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.AmpConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DestinationProperty
  = DestinationProperty {ampConfiguration :: AmpConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationProperty ::
  AmpConfigurationProperty -> DestinationProperty
mkDestinationProperty ampConfiguration
  = DestinationProperty {ampConfiguration = ampConfiguration}
instance ToResourceProperties DestinationProperty where
  toResourceProperties DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.Destination",
         supportsTags = Prelude.False,
         properties = ["AmpConfiguration" JSON..= ampConfiguration]}
instance JSON.ToJSON DestinationProperty where
  toJSON DestinationProperty {..}
    = JSON.object ["AmpConfiguration" JSON..= ampConfiguration]
instance Property "AmpConfiguration" DestinationProperty where
  type PropertyType "AmpConfiguration" DestinationProperty = AmpConfigurationProperty
  set newValue DestinationProperty {}
    = DestinationProperty {ampConfiguration = newValue, ..}