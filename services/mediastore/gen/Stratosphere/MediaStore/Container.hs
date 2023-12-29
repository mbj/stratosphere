module Stratosphere.MediaStore.Container (
        module Exports, Container(..), mkContainer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaStore.Container.CorsRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaStore.Container.MetricPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Container
  = Container {accessLoggingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               containerName :: (Value Prelude.Text),
               corsPolicy :: (Prelude.Maybe [CorsRuleProperty]),
               lifecyclePolicy :: (Prelude.Maybe (Value Prelude.Text)),
               metricPolicy :: (Prelude.Maybe MetricPolicyProperty),
               policy :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainer :: Value Prelude.Text -> Container
mkContainer containerName
  = Container
      {containerName = containerName,
       accessLoggingEnabled = Prelude.Nothing,
       corsPolicy = Prelude.Nothing, lifecyclePolicy = Prelude.Nothing,
       metricPolicy = Prelude.Nothing, policy = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Container where
  toResourceProperties Container {..}
    = ResourceProperties
        {awsType = "AWS::MediaStore::Container",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerName" JSON..= containerName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLoggingEnabled" Prelude.<$> accessLoggingEnabled,
                               (JSON..=) "CorsPolicy" Prelude.<$> corsPolicy,
                               (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
                               (JSON..=) "MetricPolicy" Prelude.<$> metricPolicy,
                               (JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Container where
  toJSON Container {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerName" JSON..= containerName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLoggingEnabled" Prelude.<$> accessLoggingEnabled,
                  (JSON..=) "CorsPolicy" Prelude.<$> corsPolicy,
                  (JSON..=) "LifecyclePolicy" Prelude.<$> lifecyclePolicy,
                  (JSON..=) "MetricPolicy" Prelude.<$> metricPolicy,
                  (JSON..=) "Policy" Prelude.<$> policy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessLoggingEnabled" Container where
  type PropertyType "AccessLoggingEnabled" Container = Value Prelude.Bool
  set newValue Container {..}
    = Container {accessLoggingEnabled = Prelude.pure newValue, ..}
instance Property "ContainerName" Container where
  type PropertyType "ContainerName" Container = Value Prelude.Text
  set newValue Container {..}
    = Container {containerName = newValue, ..}
instance Property "CorsPolicy" Container where
  type PropertyType "CorsPolicy" Container = [CorsRuleProperty]
  set newValue Container {..}
    = Container {corsPolicy = Prelude.pure newValue, ..}
instance Property "LifecyclePolicy" Container where
  type PropertyType "LifecyclePolicy" Container = Value Prelude.Text
  set newValue Container {..}
    = Container {lifecyclePolicy = Prelude.pure newValue, ..}
instance Property "MetricPolicy" Container where
  type PropertyType "MetricPolicy" Container = MetricPolicyProperty
  set newValue Container {..}
    = Container {metricPolicy = Prelude.pure newValue, ..}
instance Property "Policy" Container where
  type PropertyType "Policy" Container = Value Prelude.Text
  set newValue Container {..}
    = Container {policy = Prelude.pure newValue, ..}
instance Property "Tags" Container where
  type PropertyType "Tags" Container = [Tag]
  set newValue Container {..}
    = Container {tags = Prelude.pure newValue, ..}