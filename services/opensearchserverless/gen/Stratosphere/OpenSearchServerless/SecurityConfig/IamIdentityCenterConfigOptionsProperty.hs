module Stratosphere.OpenSearchServerless.SecurityConfig.IamIdentityCenterConfigOptionsProperty (
        IamIdentityCenterConfigOptionsProperty(..),
        mkIamIdentityCenterConfigOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamIdentityCenterConfigOptionsProperty
  = IamIdentityCenterConfigOptionsProperty {applicationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                            applicationDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                            applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                                            groupAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                            instanceArn :: (Value Prelude.Text),
                                            userAttribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamIdentityCenterConfigOptionsProperty ::
  Value Prelude.Text -> IamIdentityCenterConfigOptionsProperty
mkIamIdentityCenterConfigOptionsProperty instanceArn
  = IamIdentityCenterConfigOptionsProperty
      {instanceArn = instanceArn, applicationArn = Prelude.Nothing,
       applicationDescription = Prelude.Nothing,
       applicationName = Prelude.Nothing,
       groupAttribute = Prelude.Nothing, userAttribute = Prelude.Nothing}
instance ToResourceProperties IamIdentityCenterConfigOptionsProperty where
  toResourceProperties IamIdentityCenterConfigOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityConfig.IamIdentityCenterConfigOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                               (JSON..=) "ApplicationDescription"
                                 Prelude.<$> applicationDescription,
                               (JSON..=) "ApplicationName" Prelude.<$> applicationName,
                               (JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
                               (JSON..=) "UserAttribute" Prelude.<$> userAttribute]))}
instance JSON.ToJSON IamIdentityCenterConfigOptionsProperty where
  toJSON IamIdentityCenterConfigOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationArn" Prelude.<$> applicationArn,
                  (JSON..=) "ApplicationDescription"
                    Prelude.<$> applicationDescription,
                  (JSON..=) "ApplicationName" Prelude.<$> applicationName,
                  (JSON..=) "GroupAttribute" Prelude.<$> groupAttribute,
                  (JSON..=) "UserAttribute" Prelude.<$> userAttribute])))
instance Property "ApplicationArn" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "ApplicationArn" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {applicationArn = Prelude.pure newValue, ..}
instance Property "ApplicationDescription" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "ApplicationDescription" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {applicationDescription = Prelude.pure newValue, ..}
instance Property "ApplicationName" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "ApplicationName" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {applicationName = Prelude.pure newValue, ..}
instance Property "GroupAttribute" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "GroupAttribute" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {groupAttribute = Prelude.pure newValue, ..}
instance Property "InstanceArn" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "InstanceArn" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {instanceArn = newValue, ..}
instance Property "UserAttribute" IamIdentityCenterConfigOptionsProperty where
  type PropertyType "UserAttribute" IamIdentityCenterConfigOptionsProperty = Value Prelude.Text
  set newValue IamIdentityCenterConfigOptionsProperty {..}
    = IamIdentityCenterConfigOptionsProperty
        {userAttribute = Prelude.pure newValue, ..}