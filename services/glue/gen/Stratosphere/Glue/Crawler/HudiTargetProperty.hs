module Stratosphere.Glue.Crawler.HudiTargetProperty (
        HudiTargetProperty(..), mkHudiTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HudiTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-huditarget.html>
    HudiTargetProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-huditarget.html#cfn-glue-crawler-huditarget-connectionname>
                        connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-huditarget.html#cfn-glue-crawler-huditarget-exclusions>
                        exclusions :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-huditarget.html#cfn-glue-crawler-huditarget-maximumtraversaldepth>
                        maximumTraversalDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-huditarget.html#cfn-glue-crawler-huditarget-paths>
                        paths :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHudiTargetProperty :: HudiTargetProperty
mkHudiTargetProperty
  = HudiTargetProperty
      {haddock_workaround_ = (), connectionName = Prelude.Nothing,
       exclusions = Prelude.Nothing,
       maximumTraversalDepth = Prelude.Nothing, paths = Prelude.Nothing}
instance ToResourceProperties HudiTargetProperty where
  toResourceProperties HudiTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.HudiTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "MaximumTraversalDepth"
                              Prelude.<$> maximumTraversalDepth,
                            (JSON..=) "Paths" Prelude.<$> paths])}
instance JSON.ToJSON HudiTargetProperty where
  toJSON HudiTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "MaximumTraversalDepth"
                 Prelude.<$> maximumTraversalDepth,
               (JSON..=) "Paths" Prelude.<$> paths]))
instance Property "ConnectionName" HudiTargetProperty where
  type PropertyType "ConnectionName" HudiTargetProperty = Value Prelude.Text
  set newValue HudiTargetProperty {..}
    = HudiTargetProperty {connectionName = Prelude.pure newValue, ..}
instance Property "Exclusions" HudiTargetProperty where
  type PropertyType "Exclusions" HudiTargetProperty = ValueList Prelude.Text
  set newValue HudiTargetProperty {..}
    = HudiTargetProperty {exclusions = Prelude.pure newValue, ..}
instance Property "MaximumTraversalDepth" HudiTargetProperty where
  type PropertyType "MaximumTraversalDepth" HudiTargetProperty = Value Prelude.Integer
  set newValue HudiTargetProperty {..}
    = HudiTargetProperty
        {maximumTraversalDepth = Prelude.pure newValue, ..}
instance Property "Paths" HudiTargetProperty where
  type PropertyType "Paths" HudiTargetProperty = ValueList Prelude.Text
  set newValue HudiTargetProperty {..}
    = HudiTargetProperty {paths = Prelude.pure newValue, ..}