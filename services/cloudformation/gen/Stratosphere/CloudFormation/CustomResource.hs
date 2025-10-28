module Stratosphere.CloudFormation.CustomResource (
        CustomResource(..), mkCustomResource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomResource
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html>
    CustomResource {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetimeout>
                    serviceTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cfn-customresource.html#cfn-customresource-servicetoken>
                    serviceToken :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomResource :: Value Prelude.Text -> CustomResource
mkCustomResource serviceToken
  = CustomResource
      {haddock_workaround_ = (), serviceToken = serviceToken,
       serviceTimeout = Prelude.Nothing}
instance ToResourceProperties CustomResource where
  toResourceProperties CustomResource {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::CustomResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ServiceToken" JSON..= serviceToken]
                           (Prelude.catMaybes
                              [(JSON..=) "ServiceTimeout" Prelude.<$> serviceTimeout]))}
instance JSON.ToJSON CustomResource where
  toJSON CustomResource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ServiceToken" JSON..= serviceToken]
              (Prelude.catMaybes
                 [(JSON..=) "ServiceTimeout" Prelude.<$> serviceTimeout])))
instance Property "ServiceTimeout" CustomResource where
  type PropertyType "ServiceTimeout" CustomResource = Value Prelude.Integer
  set newValue CustomResource {..}
    = CustomResource {serviceTimeout = Prelude.pure newValue, ..}
instance Property "ServiceToken" CustomResource where
  type PropertyType "ServiceToken" CustomResource = Value Prelude.Text
  set newValue CustomResource {..}
    = CustomResource {serviceToken = newValue, ..}