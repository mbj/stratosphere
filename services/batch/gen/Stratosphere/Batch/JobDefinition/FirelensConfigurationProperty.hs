module Stratosphere.Batch.JobDefinition.FirelensConfigurationProperty (
        FirelensConfigurationProperty(..), mkFirelensConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirelensConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-firelensconfiguration.html>
    FirelensConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-firelensconfiguration.html#cfn-batch-jobdefinition-firelensconfiguration-options>
                                   options :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-firelensconfiguration.html#cfn-batch-jobdefinition-firelensconfiguration-type>
                                   type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirelensConfigurationProperty ::
  Value Prelude.Text -> FirelensConfigurationProperty
mkFirelensConfigurationProperty type'
  = FirelensConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       options = Prelude.Nothing}
instance ToResourceProperties FirelensConfigurationProperty where
  toResourceProperties FirelensConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.FirelensConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Options" Prelude.<$> options]))}
instance JSON.ToJSON FirelensConfigurationProperty where
  toJSON FirelensConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Options" Prelude.<$> options])))
instance Property "Options" FirelensConfigurationProperty where
  type PropertyType "Options" FirelensConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue FirelensConfigurationProperty {..}
    = FirelensConfigurationProperty
        {options = Prelude.pure newValue, ..}
instance Property "Type" FirelensConfigurationProperty where
  type PropertyType "Type" FirelensConfigurationProperty = Value Prelude.Text
  set newValue FirelensConfigurationProperty {..}
    = FirelensConfigurationProperty {type' = newValue, ..}