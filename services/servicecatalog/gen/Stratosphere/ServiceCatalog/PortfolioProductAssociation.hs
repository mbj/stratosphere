module Stratosphere.ServiceCatalog.PortfolioProductAssociation (
        PortfolioProductAssociation(..), mkPortfolioProductAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortfolioProductAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html>
    PortfolioProductAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-acceptlanguage>
                                 acceptLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-portfolioid>
                                 portfolioId :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-productid>
                                 productId :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-sourceportfolioid>
                                 sourcePortfolioId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortfolioProductAssociation :: PortfolioProductAssociation
mkPortfolioProductAssociation
  = PortfolioProductAssociation
      {haddock_workaround_ = (), acceptLanguage = Prelude.Nothing,
       portfolioId = Prelude.Nothing, productId = Prelude.Nothing,
       sourcePortfolioId = Prelude.Nothing}
instance ToResourceProperties PortfolioProductAssociation where
  toResourceProperties PortfolioProductAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::PortfolioProductAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
                            (JSON..=) "PortfolioId" Prelude.<$> portfolioId,
                            (JSON..=) "ProductId" Prelude.<$> productId,
                            (JSON..=) "SourcePortfolioId" Prelude.<$> sourcePortfolioId])}
instance JSON.ToJSON PortfolioProductAssociation where
  toJSON PortfolioProductAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcceptLanguage" Prelude.<$> acceptLanguage,
               (JSON..=) "PortfolioId" Prelude.<$> portfolioId,
               (JSON..=) "ProductId" Prelude.<$> productId,
               (JSON..=) "SourcePortfolioId" Prelude.<$> sourcePortfolioId]))
instance Property "AcceptLanguage" PortfolioProductAssociation where
  type PropertyType "AcceptLanguage" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {acceptLanguage = Prelude.pure newValue, ..}
instance Property "PortfolioId" PortfolioProductAssociation where
  type PropertyType "PortfolioId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {portfolioId = Prelude.pure newValue, ..}
instance Property "ProductId" PortfolioProductAssociation where
  type PropertyType "ProductId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {productId = Prelude.pure newValue, ..}
instance Property "SourcePortfolioId" PortfolioProductAssociation where
  type PropertyType "SourcePortfolioId" PortfolioProductAssociation = Value Prelude.Text
  set newValue PortfolioProductAssociation {..}
    = PortfolioProductAssociation
        {sourcePortfolioId = Prelude.pure newValue, ..}