module Stratosphere.AppStream.AppBlock.ScriptDetailsProperty (
        module Exports, ScriptDetailsProperty(..), mkScriptDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.AppBlock.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScriptDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-appblock-scriptdetails.html>
    ScriptDetailsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-appblock-scriptdetails.html#cfn-appstream-appblock-scriptdetails-executableparameters>
                           executableParameters :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-appblock-scriptdetails.html#cfn-appstream-appblock-scriptdetails-executablepath>
                           executablePath :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-appblock-scriptdetails.html#cfn-appstream-appblock-scriptdetails-scripts3location>
                           scriptS3Location :: S3LocationProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-appblock-scriptdetails.html#cfn-appstream-appblock-scriptdetails-timeoutinseconds>
                           timeoutInSeconds :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptDetailsProperty ::
  Value Prelude.Text
  -> S3LocationProperty
     -> Value Prelude.Integer -> ScriptDetailsProperty
mkScriptDetailsProperty
  executablePath
  scriptS3Location
  timeoutInSeconds
  = ScriptDetailsProperty
      {haddock_workaround_ = (), executablePath = executablePath,
       scriptS3Location = scriptS3Location,
       timeoutInSeconds = timeoutInSeconds,
       executableParameters = Prelude.Nothing}
instance ToResourceProperties ScriptDetailsProperty where
  toResourceProperties ScriptDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::AppBlock.ScriptDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutablePath" JSON..= executablePath,
                            "ScriptS3Location" JSON..= scriptS3Location,
                            "TimeoutInSeconds" JSON..= timeoutInSeconds]
                           (Prelude.catMaybes
                              [(JSON..=) "ExecutableParameters"
                                 Prelude.<$> executableParameters]))}
instance JSON.ToJSON ScriptDetailsProperty where
  toJSON ScriptDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutablePath" JSON..= executablePath,
               "ScriptS3Location" JSON..= scriptS3Location,
               "TimeoutInSeconds" JSON..= timeoutInSeconds]
              (Prelude.catMaybes
                 [(JSON..=) "ExecutableParameters"
                    Prelude.<$> executableParameters])))
instance Property "ExecutableParameters" ScriptDetailsProperty where
  type PropertyType "ExecutableParameters" ScriptDetailsProperty = Value Prelude.Text
  set newValue ScriptDetailsProperty {..}
    = ScriptDetailsProperty
        {executableParameters = Prelude.pure newValue, ..}
instance Property "ExecutablePath" ScriptDetailsProperty where
  type PropertyType "ExecutablePath" ScriptDetailsProperty = Value Prelude.Text
  set newValue ScriptDetailsProperty {..}
    = ScriptDetailsProperty {executablePath = newValue, ..}
instance Property "ScriptS3Location" ScriptDetailsProperty where
  type PropertyType "ScriptS3Location" ScriptDetailsProperty = S3LocationProperty
  set newValue ScriptDetailsProperty {..}
    = ScriptDetailsProperty {scriptS3Location = newValue, ..}
instance Property "TimeoutInSeconds" ScriptDetailsProperty where
  type PropertyType "TimeoutInSeconds" ScriptDetailsProperty = Value Prelude.Integer
  set newValue ScriptDetailsProperty {..}
    = ScriptDetailsProperty {timeoutInSeconds = newValue, ..}