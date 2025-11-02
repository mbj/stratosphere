module Stratosphere.SageMaker.Workteam.MemberDefinitionProperty (
        module Exports, MemberDefinitionProperty(..),
        mkMemberDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.CognitoMemberDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Workteam.OidcMemberDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data MemberDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html>
    MemberDefinitionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-cognitomemberdefinition>
                              cognitoMemberDefinition :: (Prelude.Maybe CognitoMemberDefinitionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-oidcmemberdefinition>
                              oidcMemberDefinition :: (Prelude.Maybe OidcMemberDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberDefinitionProperty :: MemberDefinitionProperty
mkMemberDefinitionProperty
  = MemberDefinitionProperty
      {haddock_workaround_ = (),
       cognitoMemberDefinition = Prelude.Nothing,
       oidcMemberDefinition = Prelude.Nothing}
instance ToResourceProperties MemberDefinitionProperty where
  toResourceProperties MemberDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam.MemberDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CognitoMemberDefinition"
                              Prelude.<$> cognitoMemberDefinition,
                            (JSON..=) "OidcMemberDefinition"
                              Prelude.<$> oidcMemberDefinition])}
instance JSON.ToJSON MemberDefinitionProperty where
  toJSON MemberDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CognitoMemberDefinition"
                 Prelude.<$> cognitoMemberDefinition,
               (JSON..=) "OidcMemberDefinition"
                 Prelude.<$> oidcMemberDefinition]))
instance Property "CognitoMemberDefinition" MemberDefinitionProperty where
  type PropertyType "CognitoMemberDefinition" MemberDefinitionProperty = CognitoMemberDefinitionProperty
  set newValue MemberDefinitionProperty {..}
    = MemberDefinitionProperty
        {cognitoMemberDefinition = Prelude.pure newValue, ..}
instance Property "OidcMemberDefinition" MemberDefinitionProperty where
  type PropertyType "OidcMemberDefinition" MemberDefinitionProperty = OidcMemberDefinitionProperty
  set newValue MemberDefinitionProperty {..}
    = MemberDefinitionProperty
        {oidcMemberDefinition = Prelude.pure newValue, ..}