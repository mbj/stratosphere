module Stratosphere.QuickSight.Analysis.ReferenceLineStyleConfigurationProperty (
        ReferenceLineStyleConfigurationProperty(..),
        mkReferenceLineStyleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineStyleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referencelinestyleconfiguration.html>
    ReferenceLineStyleConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referencelinestyleconfiguration.html#cfn-quicksight-analysis-referencelinestyleconfiguration-color>
                                             color :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referencelinestyleconfiguration.html#cfn-quicksight-analysis-referencelinestyleconfiguration-pattern>
                                             pattern :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineStyleConfigurationProperty ::
  ReferenceLineStyleConfigurationProperty
mkReferenceLineStyleConfigurationProperty
  = ReferenceLineStyleConfigurationProperty
      {haddock_workaround_ = (), color = Prelude.Nothing,
       pattern = Prelude.Nothing}
instance ToResourceProperties ReferenceLineStyleConfigurationProperty where
  toResourceProperties ReferenceLineStyleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ReferenceLineStyleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "Pattern" Prelude.<$> pattern])}
instance JSON.ToJSON ReferenceLineStyleConfigurationProperty where
  toJSON ReferenceLineStyleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "Pattern" Prelude.<$> pattern]))
instance Property "Color" ReferenceLineStyleConfigurationProperty where
  type PropertyType "Color" ReferenceLineStyleConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineStyleConfigurationProperty {..}
    = ReferenceLineStyleConfigurationProperty
        {color = Prelude.pure newValue, ..}
instance Property "Pattern" ReferenceLineStyleConfigurationProperty where
  type PropertyType "Pattern" ReferenceLineStyleConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineStyleConfigurationProperty {..}
    = ReferenceLineStyleConfigurationProperty
        {pattern = Prelude.pure newValue, ..}