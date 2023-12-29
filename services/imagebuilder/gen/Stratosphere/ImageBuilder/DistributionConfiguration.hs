module Stratosphere.ImageBuilder.DistributionConfiguration (
        module Exports, DistributionConfiguration(..),
        mkDistributionConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.DistributionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DistributionConfiguration
  = DistributionConfiguration {description :: (Prelude.Maybe (Value Prelude.Text)),
                               distributions :: [DistributionProperty],
                               name :: (Value Prelude.Text),
                               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDistributionConfiguration ::
  [DistributionProperty]
  -> Value Prelude.Text -> DistributionConfiguration
mkDistributionConfiguration distributions name
  = DistributionConfiguration
      {distributions = distributions, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DistributionConfiguration where
  toResourceProperties DistributionConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Distributions" JSON..= distributions, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DistributionConfiguration where
  toJSON DistributionConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Distributions" JSON..= distributions, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" DistributionConfiguration where
  type PropertyType "Description" DistributionConfiguration = Value Prelude.Text
  set newValue DistributionConfiguration {..}
    = DistributionConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "Distributions" DistributionConfiguration where
  type PropertyType "Distributions" DistributionConfiguration = [DistributionProperty]
  set newValue DistributionConfiguration {..}
    = DistributionConfiguration {distributions = newValue, ..}
instance Property "Name" DistributionConfiguration where
  type PropertyType "Name" DistributionConfiguration = Value Prelude.Text
  set newValue DistributionConfiguration {..}
    = DistributionConfiguration {name = newValue, ..}
instance Property "Tags" DistributionConfiguration where
  type PropertyType "Tags" DistributionConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DistributionConfiguration {..}
    = DistributionConfiguration {tags = Prelude.pure newValue, ..}