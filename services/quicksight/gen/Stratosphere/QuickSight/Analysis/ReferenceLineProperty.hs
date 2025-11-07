module Stratosphere.QuickSight.Analysis.ReferenceLineProperty (
        module Exports, ReferenceLineProperty(..), mkReferenceLineProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ReferenceLineDataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ReferenceLineLabelConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ReferenceLineStyleConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referenceline.html>
    ReferenceLineProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referenceline.html#cfn-quicksight-analysis-referenceline-dataconfiguration>
                           dataConfiguration :: ReferenceLineDataConfigurationProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referenceline.html#cfn-quicksight-analysis-referenceline-labelconfiguration>
                           labelConfiguration :: (Prelude.Maybe ReferenceLineLabelConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referenceline.html#cfn-quicksight-analysis-referenceline-status>
                           status :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-referenceline.html#cfn-quicksight-analysis-referenceline-styleconfiguration>
                           styleConfiguration :: (Prelude.Maybe ReferenceLineStyleConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineProperty ::
  ReferenceLineDataConfigurationProperty -> ReferenceLineProperty
mkReferenceLineProperty dataConfiguration
  = ReferenceLineProperty
      {haddock_workaround_ = (), dataConfiguration = dataConfiguration,
       labelConfiguration = Prelude.Nothing, status = Prelude.Nothing,
       styleConfiguration = Prelude.Nothing}
instance ToResourceProperties ReferenceLineProperty where
  toResourceProperties ReferenceLineProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ReferenceLine",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataConfiguration" JSON..= dataConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "LabelConfiguration" Prelude.<$> labelConfiguration,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "StyleConfiguration" Prelude.<$> styleConfiguration]))}
instance JSON.ToJSON ReferenceLineProperty where
  toJSON ReferenceLineProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataConfiguration" JSON..= dataConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "LabelConfiguration" Prelude.<$> labelConfiguration,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "StyleConfiguration" Prelude.<$> styleConfiguration])))
instance Property "DataConfiguration" ReferenceLineProperty where
  type PropertyType "DataConfiguration" ReferenceLineProperty = ReferenceLineDataConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty {dataConfiguration = newValue, ..}
instance Property "LabelConfiguration" ReferenceLineProperty where
  type PropertyType "LabelConfiguration" ReferenceLineProperty = ReferenceLineLabelConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty
        {labelConfiguration = Prelude.pure newValue, ..}
instance Property "Status" ReferenceLineProperty where
  type PropertyType "Status" ReferenceLineProperty = Value Prelude.Text
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty {status = Prelude.pure newValue, ..}
instance Property "StyleConfiguration" ReferenceLineProperty where
  type PropertyType "StyleConfiguration" ReferenceLineProperty = ReferenceLineStyleConfigurationProperty
  set newValue ReferenceLineProperty {..}
    = ReferenceLineProperty
        {styleConfiguration = Prelude.pure newValue, ..}