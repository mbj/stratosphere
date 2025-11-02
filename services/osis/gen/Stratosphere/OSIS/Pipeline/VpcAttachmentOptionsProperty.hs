module Stratosphere.OSIS.Pipeline.VpcAttachmentOptionsProperty (
        VpcAttachmentOptionsProperty(..), mkVpcAttachmentOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcAttachmentOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-vpcattachmentoptions.html>
    VpcAttachmentOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-vpcattachmentoptions.html#cfn-osis-pipeline-vpcattachmentoptions-attachtovpc>
                                  attachToVpc :: (Value Prelude.Bool),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-osis-pipeline-vpcattachmentoptions.html#cfn-osis-pipeline-vpcattachmentoptions-cidrblock>
                                  cidrBlock :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcAttachmentOptionsProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> VpcAttachmentOptionsProperty
mkVpcAttachmentOptionsProperty attachToVpc cidrBlock
  = VpcAttachmentOptionsProperty
      {haddock_workaround_ = (), attachToVpc = attachToVpc,
       cidrBlock = cidrBlock}
instance ToResourceProperties VpcAttachmentOptionsProperty where
  toResourceProperties VpcAttachmentOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.VpcAttachmentOptions",
         supportsTags = Prelude.False,
         properties = ["AttachToVpc" JSON..= attachToVpc,
                       "CidrBlock" JSON..= cidrBlock]}
instance JSON.ToJSON VpcAttachmentOptionsProperty where
  toJSON VpcAttachmentOptionsProperty {..}
    = JSON.object
        ["AttachToVpc" JSON..= attachToVpc, "CidrBlock" JSON..= cidrBlock]
instance Property "AttachToVpc" VpcAttachmentOptionsProperty where
  type PropertyType "AttachToVpc" VpcAttachmentOptionsProperty = Value Prelude.Bool
  set newValue VpcAttachmentOptionsProperty {..}
    = VpcAttachmentOptionsProperty {attachToVpc = newValue, ..}
instance Property "CidrBlock" VpcAttachmentOptionsProperty where
  type PropertyType "CidrBlock" VpcAttachmentOptionsProperty = Value Prelude.Text
  set newValue VpcAttachmentOptionsProperty {..}
    = VpcAttachmentOptionsProperty {cidrBlock = newValue, ..}