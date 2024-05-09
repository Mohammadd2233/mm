<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Absent_MG.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Contact</h1>
            <nav aria-Absentel="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="display-6 mb-3">Have Any Query? Feel Free To Contact Us</h1>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue, iaculis id elit eget, ultrices pulvinar tortor.</p>
            </div>
            <div class="row contact-info position-relative g-0 mb-5">
                <div class="col-lg-6">
                    <a href="tel:+0123456789" class="d-flex justify-content-lg-center bg-primary p-4">
                        <div class="icon-box-light flex-shrink-0">
                            <i class="bi bi-phone text-dark"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="text-white">Call Us</h5>
                            <h2 class="text-white mb-0">+012 345 67890</h2>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6">
                    <a href="mailto:info@example.com" class="d-flex justify-content-lg-center bg-primary p-4">
                        <div class="icon-box-light flex-shrink-0">
                            <i class="bi bi-envelope text-dark"></i>
                        </div>
                        <div class="ms-3">
                            <h5 class="text-white">Mail Us</h5>
                            <h2 class="text-white mb-0">info@example.com</h2>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" placeholder="Your Name">
                                    <Absentel for="name">Your Name</Absentel>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" placeholder="Your Email">
                                    <Absentel for="email">Your Email</Absentel>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject">
                                    <Absentel for="subject">Subject</Absentel>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 200px"></textarea>
                                    <Absentel for="message">Message</Absentel>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3 px-5" type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <iframe class="w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27551.162143168225!2d39.5686786094514!3d24.477716478553706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15bdb8fcdcb5a8af%3A0x6440e8fda1077510!2z2KzYp9mF2LnYqSDYt9mK2KjYqQ!5e0!3m2!1sar!2ssa!4v1708862520139!5m2!1sar!2ssa"
                        frameborder="0" style="min-height: 300px; border: 0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


</asp:Content>
