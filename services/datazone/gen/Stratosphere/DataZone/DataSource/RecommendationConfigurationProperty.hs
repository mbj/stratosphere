module Stratosphere.DataZone.DataSource.RecommendationConfigurationProperty (
        RecommendationConfigurationProperty(..),
        mkRecommendationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecommendationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-recommendationconfiguration.html>
    RecommendationConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-recommendationconfiguration.html#cfn-datazone-datasource-recommendationconfiguration-enablebusinessnamegeneration>
                                         enableBusinessNameGeneration :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecommendationConfigurationProperty ::
  RecommendationConfigurationProperty
mkRecommendationConfigurationProperty
  = RecommendationConfigurationProperty
      {haddock_workaround_ = (),
       enableBusinessNameGeneration = Prelude.Nothing}
instance ToResourceProperties RecommendationConfigurationProperty where
  toResourceProperties RecommendationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.RecommendationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableBusinessNameGeneration"
                              Prelude.<$> enableBusinessNameGeneration])}
instance JSON.ToJSON RecommendationConfigurationProperty where
  toJSON RecommendationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableBusinessNameGeneration"
                 Prelude.<$> enableBusinessNameGeneration]))
instance Property "EnableBusinessNameGeneration" RecommendationConfigurationProperty where
  type PropertyType "EnableBusinessNameGeneration" RecommendationConfigurationProperty = Value Prelude.Bool
  set newValue RecommendationConfigurationProperty {..}
    = RecommendationConfigurationProperty
        {enableBusinessNameGeneration = Prelude.pure newValue, ..}