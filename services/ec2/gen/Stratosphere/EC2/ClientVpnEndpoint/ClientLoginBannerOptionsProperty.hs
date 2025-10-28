module Stratosphere.EC2.ClientVpnEndpoint.ClientLoginBannerOptionsProperty (
        ClientLoginBannerOptionsProperty(..),
        mkClientLoginBannerOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientLoginBannerOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientloginbanneroptions.html>
    ClientLoginBannerOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientloginbanneroptions.html#cfn-ec2-clientvpnendpoint-clientloginbanneroptions-bannertext>
                                      bannerText :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientloginbanneroptions.html#cfn-ec2-clientvpnendpoint-clientloginbanneroptions-enabled>
                                      enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientLoginBannerOptionsProperty ::
  Value Prelude.Bool -> ClientLoginBannerOptionsProperty
mkClientLoginBannerOptionsProperty enabled
  = ClientLoginBannerOptionsProperty
      {haddock_workaround_ = (), enabled = enabled,
       bannerText = Prelude.Nothing}
instance ToResourceProperties ClientLoginBannerOptionsProperty where
  toResourceProperties ClientLoginBannerOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ClientLoginBannerOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "BannerText" Prelude.<$> bannerText]))}
instance JSON.ToJSON ClientLoginBannerOptionsProperty where
  toJSON ClientLoginBannerOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "BannerText" Prelude.<$> bannerText])))
instance Property "BannerText" ClientLoginBannerOptionsProperty where
  type PropertyType "BannerText" ClientLoginBannerOptionsProperty = Value Prelude.Text
  set newValue ClientLoginBannerOptionsProperty {..}
    = ClientLoginBannerOptionsProperty
        {bannerText = Prelude.pure newValue, ..}
instance Property "Enabled" ClientLoginBannerOptionsProperty where
  type PropertyType "Enabled" ClientLoginBannerOptionsProperty = Value Prelude.Bool
  set newValue ClientLoginBannerOptionsProperty {..}
    = ClientLoginBannerOptionsProperty {enabled = newValue, ..}