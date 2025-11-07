module Stratosphere.ECS.Service.AdvancedConfigurationProperty (
        AdvancedConfigurationProperty(..), mkAdvancedConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-advancedconfiguration.html>
    AdvancedConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-advancedconfiguration.html#cfn-ecs-service-advancedconfiguration-alternatetargetgrouparn>
                                   alternateTargetGroupArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-advancedconfiguration.html#cfn-ecs-service-advancedconfiguration-productionlistenerrule>
                                   productionListenerRule :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-advancedconfiguration.html#cfn-ecs-service-advancedconfiguration-rolearn>
                                   roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-advancedconfiguration.html#cfn-ecs-service-advancedconfiguration-testlistenerrule>
                                   testListenerRule :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedConfigurationProperty ::
  Value Prelude.Text -> AdvancedConfigurationProperty
mkAdvancedConfigurationProperty alternateTargetGroupArn
  = AdvancedConfigurationProperty
      {haddock_workaround_ = (),
       alternateTargetGroupArn = alternateTargetGroupArn,
       productionListenerRule = Prelude.Nothing,
       roleArn = Prelude.Nothing, testListenerRule = Prelude.Nothing}
instance ToResourceProperties AdvancedConfigurationProperty where
  toResourceProperties AdvancedConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.AdvancedConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlternateTargetGroupArn" JSON..= alternateTargetGroupArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ProductionListenerRule"
                                 Prelude.<$> productionListenerRule,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "TestListenerRule" Prelude.<$> testListenerRule]))}
instance JSON.ToJSON AdvancedConfigurationProperty where
  toJSON AdvancedConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlternateTargetGroupArn" JSON..= alternateTargetGroupArn]
              (Prelude.catMaybes
                 [(JSON..=) "ProductionListenerRule"
                    Prelude.<$> productionListenerRule,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "TestListenerRule" Prelude.<$> testListenerRule])))
instance Property "AlternateTargetGroupArn" AdvancedConfigurationProperty where
  type PropertyType "AlternateTargetGroupArn" AdvancedConfigurationProperty = Value Prelude.Text
  set newValue AdvancedConfigurationProperty {..}
    = AdvancedConfigurationProperty
        {alternateTargetGroupArn = newValue, ..}
instance Property "ProductionListenerRule" AdvancedConfigurationProperty where
  type PropertyType "ProductionListenerRule" AdvancedConfigurationProperty = Value Prelude.Text
  set newValue AdvancedConfigurationProperty {..}
    = AdvancedConfigurationProperty
        {productionListenerRule = Prelude.pure newValue, ..}
instance Property "RoleArn" AdvancedConfigurationProperty where
  type PropertyType "RoleArn" AdvancedConfigurationProperty = Value Prelude.Text
  set newValue AdvancedConfigurationProperty {..}
    = AdvancedConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}
instance Property "TestListenerRule" AdvancedConfigurationProperty where
  type PropertyType "TestListenerRule" AdvancedConfigurationProperty = Value Prelude.Text
  set newValue AdvancedConfigurationProperty {..}
    = AdvancedConfigurationProperty
        {testListenerRule = Prelude.pure newValue, ..}