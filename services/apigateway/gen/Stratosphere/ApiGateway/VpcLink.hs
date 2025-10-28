module Stratosphere.ApiGateway.VpcLink (
        VpcLink(..), mkVpcLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VpcLink
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html>
    VpcLink {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-vpclink.html#cfn-apigateway-vpclink-targetarns>
             targetArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcLink ::
  Value Prelude.Text -> ValueList Prelude.Text -> VpcLink
mkVpcLink name targetArns
  = VpcLink
      {haddock_workaround_ = (), name = name, targetArns = targetArns,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VpcLink where
  toResourceProperties VpcLink {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::VpcLink", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "TargetArns" JSON..= targetArns]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcLink where
  toJSON VpcLink {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "TargetArns" JSON..= targetArns]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" VpcLink where
  type PropertyType "Description" VpcLink = Value Prelude.Text
  set newValue VpcLink {..}
    = VpcLink {description = Prelude.pure newValue, ..}
instance Property "Name" VpcLink where
  type PropertyType "Name" VpcLink = Value Prelude.Text
  set newValue VpcLink {..} = VpcLink {name = newValue, ..}
instance Property "Tags" VpcLink where
  type PropertyType "Tags" VpcLink = [Tag]
  set newValue VpcLink {..}
    = VpcLink {tags = Prelude.pure newValue, ..}
instance Property "TargetArns" VpcLink where
  type PropertyType "TargetArns" VpcLink = ValueList Prelude.Text
  set newValue VpcLink {..} = VpcLink {targetArns = newValue, ..}