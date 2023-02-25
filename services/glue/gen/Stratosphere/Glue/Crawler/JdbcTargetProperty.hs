module Stratosphere.Glue.Crawler.JdbcTargetProperty (
        JdbcTargetProperty(..), mkJdbcTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JdbcTargetProperty
  = JdbcTargetProperty {connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                        exclusions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                        path :: (Prelude.Maybe (Value Prelude.Text))}
mkJdbcTargetProperty :: JdbcTargetProperty
mkJdbcTargetProperty
  = JdbcTargetProperty
      {connectionName = Prelude.Nothing, exclusions = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties JdbcTargetProperty where
  toResourceProperties JdbcTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.JdbcTarget",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
                            (JSON..=) "Exclusions" Prelude.<$> exclusions,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON JdbcTargetProperty where
  toJSON JdbcTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConnectionName" Prelude.<$> connectionName,
               (JSON..=) "Exclusions" Prelude.<$> exclusions,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "ConnectionName" JdbcTargetProperty where
  type PropertyType "ConnectionName" JdbcTargetProperty = Value Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {connectionName = Prelude.pure newValue, ..}
instance Property "Exclusions" JdbcTargetProperty where
  type PropertyType "Exclusions" JdbcTargetProperty = ValueList (Value Prelude.Text)
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {exclusions = Prelude.pure newValue, ..}
instance Property "Path" JdbcTargetProperty where
  type PropertyType "Path" JdbcTargetProperty = Value Prelude.Text
  set newValue JdbcTargetProperty {..}
    = JdbcTargetProperty {path = Prelude.pure newValue, ..}