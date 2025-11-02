module Stratosphere.IoT.MitigationAction.ReplaceDefaultPolicyVersionParamsProperty (
        ReplaceDefaultPolicyVersionParamsProperty(..),
        mkReplaceDefaultPolicyVersionParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplaceDefaultPolicyVersionParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-replacedefaultpolicyversionparams.html>
    ReplaceDefaultPolicyVersionParamsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-replacedefaultpolicyversionparams.html#cfn-iot-mitigationaction-replacedefaultpolicyversionparams-templatename>
                                               templateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplaceDefaultPolicyVersionParamsProperty ::
  Value Prelude.Text -> ReplaceDefaultPolicyVersionParamsProperty
mkReplaceDefaultPolicyVersionParamsProperty templateName
  = ReplaceDefaultPolicyVersionParamsProperty
      {haddock_workaround_ = (), templateName = templateName}
instance ToResourceProperties ReplaceDefaultPolicyVersionParamsProperty where
  toResourceProperties ReplaceDefaultPolicyVersionParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.ReplaceDefaultPolicyVersionParams",
         supportsTags = Prelude.False,
         properties = ["TemplateName" JSON..= templateName]}
instance JSON.ToJSON ReplaceDefaultPolicyVersionParamsProperty where
  toJSON ReplaceDefaultPolicyVersionParamsProperty {..}
    = JSON.object ["TemplateName" JSON..= templateName]
instance Property "TemplateName" ReplaceDefaultPolicyVersionParamsProperty where
  type PropertyType "TemplateName" ReplaceDefaultPolicyVersionParamsProperty = Value Prelude.Text
  set newValue ReplaceDefaultPolicyVersionParamsProperty {..}
    = ReplaceDefaultPolicyVersionParamsProperty
        {templateName = newValue, ..}