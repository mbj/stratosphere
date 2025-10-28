module Stratosphere.Glue.Crawler.IcebergTargetProperty (
        IcebergTargetProperty(..), mkIcebergTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcebergTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-icebergtarget.html>
    IcebergTargetProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-icebergtarget.html#cfn-glue-crawler-icebergtarget-connectionname>
                           connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-icebergtarget.html#cfn-glue-crawler-icebergtarget-exclusions>
                           exclusions :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-icebergtarget.html#cfn-glue-crawler-icebergtarget-maximumtraversaldepth>
                           maximumTraversalDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-icebergtarget.html#cfn-glue-crawler-icebergtarget-paths>
                           paths :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergTargetProperty :: IcebergTargetProperty
mkIcebergTargetProperty
  = IcebergTargetProperty
      {haddock_workaround_ = (), connectionName = Prelude.Nothing,
       exclusions = Prelude.Nothing,
       maximumTraversalDepth = Prelude.Nothing, paths = Prelude.Nothing}
instance ToResourceProperties IcebergTargetProperty where
  toResourceProperties IcebergTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.IcebergTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "MaximumTraversalDepth"
                              Prelude.<$> maximumTraversalDepth,
                            (JSON..=) "Paths" Prelude.<$> paths])}
instance JSON.ToJSON IcebergTargetProperty where
  toJSON IcebergTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "MaximumTraversalDepth"
                 Prelude.<$> maximumTraversalDepth,
               (JSON..=) "Paths" Prelude.<$> paths]))
instance Property "ConnectionName" IcebergTargetProperty where
  type PropertyType "ConnectionName" IcebergTargetProperty = Value Prelude.Text
  set newValue IcebergTargetProperty {..}
    = IcebergTargetProperty
        {connectionName = Prelude.pure newValue, ..}
instance Property "Exclusions" IcebergTargetProperty where
  type PropertyType "Exclusions" IcebergTargetProperty = ValueList Prelude.Text
  set newValue IcebergTargetProperty {..}
    = IcebergTargetProperty {exclusions = Prelude.pure newValue, ..}
instance Property "MaximumTraversalDepth" IcebergTargetProperty where
  type PropertyType "MaximumTraversalDepth" IcebergTargetProperty = Value Prelude.Integer
  set newValue IcebergTargetProperty {..}
    = IcebergTargetProperty
        {maximumTraversalDepth = Prelude.pure newValue, ..}
instance Property "Paths" IcebergTargetProperty where
  type PropertyType "Paths" IcebergTargetProperty = ValueList Prelude.Text
  set newValue IcebergTargetProperty {..}
    = IcebergTargetProperty {paths = Prelude.pure newValue, ..}