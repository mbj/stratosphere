module Stratosphere.WorkSpacesWeb.UserSettings.CookieSpecificationProperty (
        CookieSpecificationProperty(..), mkCookieSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CookieSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-cookiespecification.html>
    CookieSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-cookiespecification.html#cfn-workspacesweb-usersettings-cookiespecification-domain>
                                 domain :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-cookiespecification.html#cfn-workspacesweb-usersettings-cookiespecification-name>
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-cookiespecification.html#cfn-workspacesweb-usersettings-cookiespecification-path>
                                 path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCookieSpecificationProperty ::
  Value Prelude.Text -> CookieSpecificationProperty
mkCookieSpecificationProperty domain
  = CookieSpecificationProperty
      {haddock_workaround_ = (), domain = domain, name = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties CookieSpecificationProperty where
  toResourceProperties CookieSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::UserSettings.CookieSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Domain" JSON..= domain]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON CookieSpecificationProperty where
  toJSON CookieSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Domain" JSON..= domain]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "Domain" CookieSpecificationProperty where
  type PropertyType "Domain" CookieSpecificationProperty = Value Prelude.Text
  set newValue CookieSpecificationProperty {..}
    = CookieSpecificationProperty {domain = newValue, ..}
instance Property "Name" CookieSpecificationProperty where
  type PropertyType "Name" CookieSpecificationProperty = Value Prelude.Text
  set newValue CookieSpecificationProperty {..}
    = CookieSpecificationProperty {name = Prelude.pure newValue, ..}
instance Property "Path" CookieSpecificationProperty where
  type PropertyType "Path" CookieSpecificationProperty = Value Prelude.Text
  set newValue CookieSpecificationProperty {..}
    = CookieSpecificationProperty {path = Prelude.pure newValue, ..}