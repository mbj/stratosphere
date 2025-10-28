module Stratosphere.APS.Scraper.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.EksConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-source.html#cfn-aps-scraper-source-eksconfiguration>
                    eksConfiguration :: EksConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: EksConfigurationProperty -> SourceProperty
mkSourceProperty eksConfiguration
  = SourceProperty
      {haddock_workaround_ = (), eksConfiguration = eksConfiguration}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.Source",
         supportsTags = Prelude.False,
         properties = ["EksConfiguration" JSON..= eksConfiguration]}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object ["EksConfiguration" JSON..= eksConfiguration]
instance Property "EksConfiguration" SourceProperty where
  type PropertyType "EksConfiguration" SourceProperty = EksConfigurationProperty
  set newValue SourceProperty {..}
    = SourceProperty {eksConfiguration = newValue, ..}