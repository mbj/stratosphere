module Stratosphere.KinesisAnalyticsV2.ApplicationOutput (
        module Exports, ApplicationOutput(..), mkApplicationOutput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationOutput.OutputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationOutput
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html>
    ApplicationOutput {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-applicationname>
                       applicationName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationoutput.html#cfn-kinesisanalyticsv2-applicationoutput-output>
                       output :: OutputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationOutput ::
  Value Prelude.Text -> OutputProperty -> ApplicationOutput
mkApplicationOutput applicationName output
  = ApplicationOutput
      {haddock_workaround_ = (), applicationName = applicationName,
       output = output}
instance ToResourceProperties ApplicationOutput where
  toResourceProperties ApplicationOutput {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput",
         supportsTags = Prelude.False,
         properties = ["ApplicationName" JSON..= applicationName,
                       "Output" JSON..= output]}
instance JSON.ToJSON ApplicationOutput where
  toJSON ApplicationOutput {..}
    = JSON.object
        ["ApplicationName" JSON..= applicationName,
         "Output" JSON..= output]
instance Property "ApplicationName" ApplicationOutput where
  type PropertyType "ApplicationName" ApplicationOutput = Value Prelude.Text
  set newValue ApplicationOutput {..}
    = ApplicationOutput {applicationName = newValue, ..}
instance Property "Output" ApplicationOutput where
  type PropertyType "Output" ApplicationOutput = OutputProperty
  set newValue ApplicationOutput {..}
    = ApplicationOutput {output = newValue, ..}