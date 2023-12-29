module Stratosphere.Shield.Protection (
        module Exports, Protection(..), mkProtection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Shield.Protection.ApplicationLayerAutomaticResponseConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Protection
  = Protection {applicationLayerAutomaticResponseConfiguration :: (Prelude.Maybe ApplicationLayerAutomaticResponseConfigurationProperty),
                healthCheckArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                name :: (Value Prelude.Text),
                resourceArn :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtection ::
  Value Prelude.Text -> Value Prelude.Text -> Protection
mkProtection name resourceArn
  = Protection
      {name = name, resourceArn = resourceArn,
       applicationLayerAutomaticResponseConfiguration = Prelude.Nothing,
       healthCheckArns = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Protection where
  toResourceProperties Protection {..}
    = ResourceProperties
        {awsType = "AWS::Shield::Protection", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ResourceArn" JSON..= resourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationLayerAutomaticResponseConfiguration"
                                 Prelude.<$> applicationLayerAutomaticResponseConfiguration,
                               (JSON..=) "HealthCheckArns" Prelude.<$> healthCheckArns,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Protection where
  toJSON Protection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ResourceArn" JSON..= resourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationLayerAutomaticResponseConfiguration"
                    Prelude.<$> applicationLayerAutomaticResponseConfiguration,
                  (JSON..=) "HealthCheckArns" Prelude.<$> healthCheckArns,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationLayerAutomaticResponseConfiguration" Protection where
  type PropertyType "ApplicationLayerAutomaticResponseConfiguration" Protection = ApplicationLayerAutomaticResponseConfigurationProperty
  set newValue Protection {..}
    = Protection
        {applicationLayerAutomaticResponseConfiguration = Prelude.pure
                                                            newValue,
         ..}
instance Property "HealthCheckArns" Protection where
  type PropertyType "HealthCheckArns" Protection = ValueList Prelude.Text
  set newValue Protection {..}
    = Protection {healthCheckArns = Prelude.pure newValue, ..}
instance Property "Name" Protection where
  type PropertyType "Name" Protection = Value Prelude.Text
  set newValue Protection {..} = Protection {name = newValue, ..}
instance Property "ResourceArn" Protection where
  type PropertyType "ResourceArn" Protection = Value Prelude.Text
  set newValue Protection {..}
    = Protection {resourceArn = newValue, ..}
instance Property "Tags" Protection where
  type PropertyType "Tags" Protection = [Tag]
  set newValue Protection {..}
    = Protection {tags = Prelude.pure newValue, ..}