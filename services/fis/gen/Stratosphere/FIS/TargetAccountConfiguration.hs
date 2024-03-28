module Stratosphere.FIS.TargetAccountConfiguration (
        TargetAccountConfiguration(..), mkTargetAccountConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetAccountConfiguration
  = TargetAccountConfiguration {accountId :: (Value Prelude.Text),
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                experimentTemplateId :: (Value Prelude.Text),
                                roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetAccountConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TargetAccountConfiguration
mkTargetAccountConfiguration accountId experimentTemplateId roleArn
  = TargetAccountConfiguration
      {accountId = accountId,
       experimentTemplateId = experimentTemplateId, roleArn = roleArn,
       description = Prelude.Nothing}
instance ToResourceProperties TargetAccountConfiguration where
  toResourceProperties TargetAccountConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::FIS::TargetAccountConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId,
                            "ExperimentTemplateId" JSON..= experimentTemplateId,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON TargetAccountConfiguration where
  toJSON TargetAccountConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId,
               "ExperimentTemplateId" JSON..= experimentTemplateId,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "AccountId" TargetAccountConfiguration where
  type PropertyType "AccountId" TargetAccountConfiguration = Value Prelude.Text
  set newValue TargetAccountConfiguration {..}
    = TargetAccountConfiguration {accountId = newValue, ..}
instance Property "Description" TargetAccountConfiguration where
  type PropertyType "Description" TargetAccountConfiguration = Value Prelude.Text
  set newValue TargetAccountConfiguration {..}
    = TargetAccountConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "ExperimentTemplateId" TargetAccountConfiguration where
  type PropertyType "ExperimentTemplateId" TargetAccountConfiguration = Value Prelude.Text
  set newValue TargetAccountConfiguration {..}
    = TargetAccountConfiguration {experimentTemplateId = newValue, ..}
instance Property "RoleArn" TargetAccountConfiguration where
  type PropertyType "RoleArn" TargetAccountConfiguration = Value Prelude.Text
  set newValue TargetAccountConfiguration {..}
    = TargetAccountConfiguration {roleArn = newValue, ..}