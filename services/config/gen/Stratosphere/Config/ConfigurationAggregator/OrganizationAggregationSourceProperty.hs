module Stratosphere.Config.ConfigurationAggregator.OrganizationAggregationSourceProperty (
        OrganizationAggregationSourceProperty(..),
        mkOrganizationAggregationSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationAggregationSourceProperty
  = OrganizationAggregationSourceProperty {allAwsRegions :: (Prelude.Maybe (Value Prelude.Bool)),
                                           awsRegions :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationAggregationSourceProperty ::
  Value Prelude.Text -> OrganizationAggregationSourceProperty
mkOrganizationAggregationSourceProperty roleArn
  = OrganizationAggregationSourceProperty
      {roleArn = roleArn, allAwsRegions = Prelude.Nothing,
       awsRegions = Prelude.Nothing}
instance ToResourceProperties OrganizationAggregationSourceProperty where
  toResourceProperties OrganizationAggregationSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationAggregator.OrganizationAggregationSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AllAwsRegions" Prelude.<$> allAwsRegions,
                               (JSON..=) "AwsRegions" Prelude.<$> awsRegions]))}
instance JSON.ToJSON OrganizationAggregationSourceProperty where
  toJSON OrganizationAggregationSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AllAwsRegions" Prelude.<$> allAwsRegions,
                  (JSON..=) "AwsRegions" Prelude.<$> awsRegions])))
instance Property "AllAwsRegions" OrganizationAggregationSourceProperty where
  type PropertyType "AllAwsRegions" OrganizationAggregationSourceProperty = Value Prelude.Bool
  set newValue OrganizationAggregationSourceProperty {..}
    = OrganizationAggregationSourceProperty
        {allAwsRegions = Prelude.pure newValue, ..}
instance Property "AwsRegions" OrganizationAggregationSourceProperty where
  type PropertyType "AwsRegions" OrganizationAggregationSourceProperty = ValueList Prelude.Text
  set newValue OrganizationAggregationSourceProperty {..}
    = OrganizationAggregationSourceProperty
        {awsRegions = Prelude.pure newValue, ..}
instance Property "RoleArn" OrganizationAggregationSourceProperty where
  type PropertyType "RoleArn" OrganizationAggregationSourceProperty = Value Prelude.Text
  set newValue OrganizationAggregationSourceProperty {..}
    = OrganizationAggregationSourceProperty {roleArn = newValue, ..}