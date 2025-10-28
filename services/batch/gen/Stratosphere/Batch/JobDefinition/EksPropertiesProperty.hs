module Stratosphere.Batch.JobDefinition.EksPropertiesProperty (
        module Exports, EksPropertiesProperty(..), mkEksPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.PodPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data EksPropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksproperties.html>
    EksPropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksproperties.html#cfn-batch-jobdefinition-eksproperties-podproperties>
                           podProperties :: (Prelude.Maybe PodPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksPropertiesProperty :: EksPropertiesProperty
mkEksPropertiesProperty
  = EksPropertiesProperty {podProperties = Prelude.Nothing}
instance ToResourceProperties EksPropertiesProperty where
  toResourceProperties EksPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PodProperties" Prelude.<$> podProperties])}
instance JSON.ToJSON EksPropertiesProperty where
  toJSON EksPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PodProperties" Prelude.<$> podProperties]))
instance Property "PodProperties" EksPropertiesProperty where
  type PropertyType "PodProperties" EksPropertiesProperty = PodPropertiesProperty
  set newValue EksPropertiesProperty {}
    = EksPropertiesProperty {podProperties = Prelude.pure newValue, ..}