module Stratosphere.CloudFormation.GuardHook.OptionsProperty (
        module Exports, OptionsProperty(..), mkOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data OptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-options.html>
    OptionsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-options.html#cfn-cloudformation-guardhook-options-inputparams>
                     inputParams :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOptionsProperty :: OptionsProperty
mkOptionsProperty
  = OptionsProperty
      {haddock_workaround_ = (), inputParams = Prelude.Nothing}
instance ToResourceProperties OptionsProperty where
  toResourceProperties OptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.Options",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputParams" Prelude.<$> inputParams])}
instance JSON.ToJSON OptionsProperty where
  toJSON OptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputParams" Prelude.<$> inputParams]))
instance Property "InputParams" OptionsProperty where
  type PropertyType "InputParams" OptionsProperty = S3LocationProperty
  set newValue OptionsProperty {..}
    = OptionsProperty {inputParams = Prelude.pure newValue, ..}