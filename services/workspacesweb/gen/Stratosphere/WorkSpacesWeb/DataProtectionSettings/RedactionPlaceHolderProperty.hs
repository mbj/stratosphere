module Stratosphere.WorkSpacesWeb.DataProtectionSettings.RedactionPlaceHolderProperty (
        RedactionPlaceHolderProperty(..), mkRedactionPlaceHolderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedactionPlaceHolderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-redactionplaceholder.html>
    RedactionPlaceHolderProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-redactionplaceholder.html#cfn-workspacesweb-dataprotectionsettings-redactionplaceholder-redactionplaceholdertext>
                                  redactionPlaceHolderText :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-dataprotectionsettings-redactionplaceholder.html#cfn-workspacesweb-dataprotectionsettings-redactionplaceholder-redactionplaceholdertype>
                                  redactionPlaceHolderType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedactionPlaceHolderProperty ::
  Value Prelude.Text -> RedactionPlaceHolderProperty
mkRedactionPlaceHolderProperty redactionPlaceHolderType
  = RedactionPlaceHolderProperty
      {haddock_workaround_ = (),
       redactionPlaceHolderType = redactionPlaceHolderType,
       redactionPlaceHolderText = Prelude.Nothing}
instance ToResourceProperties RedactionPlaceHolderProperty where
  toResourceProperties RedactionPlaceHolderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::DataProtectionSettings.RedactionPlaceHolder",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RedactionPlaceHolderType" JSON..= redactionPlaceHolderType]
                           (Prelude.catMaybes
                              [(JSON..=) "RedactionPlaceHolderText"
                                 Prelude.<$> redactionPlaceHolderText]))}
instance JSON.ToJSON RedactionPlaceHolderProperty where
  toJSON RedactionPlaceHolderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RedactionPlaceHolderType" JSON..= redactionPlaceHolderType]
              (Prelude.catMaybes
                 [(JSON..=) "RedactionPlaceHolderText"
                    Prelude.<$> redactionPlaceHolderText])))
instance Property "RedactionPlaceHolderText" RedactionPlaceHolderProperty where
  type PropertyType "RedactionPlaceHolderText" RedactionPlaceHolderProperty = Value Prelude.Text
  set newValue RedactionPlaceHolderProperty {..}
    = RedactionPlaceHolderProperty
        {redactionPlaceHolderText = Prelude.pure newValue, ..}
instance Property "RedactionPlaceHolderType" RedactionPlaceHolderProperty where
  type PropertyType "RedactionPlaceHolderType" RedactionPlaceHolderProperty = Value Prelude.Text
  set newValue RedactionPlaceHolderProperty {..}
    = RedactionPlaceHolderProperty
        {redactionPlaceHolderType = newValue, ..}