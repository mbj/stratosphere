module Stratosphere.Glue.Crawler.JdbcTargetProperty (
        JdbcTargetProperty(..), mkJdbcTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JdbcTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html>
    JdbcTargetProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-connectionname>
                        connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-enableadditionalmetadata>
                        enableAdditionalMetadata :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-exclusions>
                        exclusions :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-path>
                        path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJdbcTargetProperty :: JdbcTargetProperty
mkJdbcTargetProperty
  = JdbcTargetProperty
      {haddock_workaround_ = (), connectionName = Prelude.Nothing,
       enableAdditionalMetadata = Prelude.Nothing,
       exclusions = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties JdbcTargetProperty where
  toResourceProperties JdbcTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.JdbcTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "EnableAdditionalMetadata"
                              Prelude.<$> enableAdditionalMetadata,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON JdbcTargetProperty where
  toJSON JdbcTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "EnableAdditionalMetadata"
                 Prelude.<$> enableAdditionalMetadata,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "ConnectionName" JdbcTargetProperty where
  type PropertyType "ConnectionName" JdbcTargetProperty = Value Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {connectionName = Prelude.pure newValue, ..}
instance Property "EnableAdditionalMetadata" JdbcTargetProperty where
  type PropertyType "EnableAdditionalMetadata" JdbcTargetProperty = ValueList Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty
        {enableAdditionalMetadata = Prelude.pure newValue, ..}
instance Property "Exclusions" JdbcTargetProperty where
  type PropertyType "Exclusions" JdbcTargetProperty = ValueList Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {exclusions = Prelude.pure newValue, ..}
instance Property "Path" JdbcTargetProperty where
  type PropertyType "Path" JdbcTargetProperty = Value Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {path = Prelude.pure newValue, ..}